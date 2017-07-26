package com.last.admin.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

public class poitest {

	public static void main(String[] args) throws IOException {
		File file = new File("D:/test2.xls");
		
		FileInputStream fis = new FileInputStream(file);
		HSSFWorkbook workBook = new HSSFWorkbook(fis);
		HSSFSheet sheet =  workBook.getSheetAt(0);
		Iterator<Row> rowIterator = sheet.iterator();
		int rowCnt = 0;
		String[][] resultArr = new String[100][11];
		int colCount = 0;
		
		String query = "";
		//행의수대로 회전
		while(rowIterator.hasNext() && rowCnt <177){
			Row row = rowIterator.next();
			
			Iterator<Cell> cellIterator = row.cellIterator();
			
			//11번 회전
			while(cellIterator.hasNext()){
				Cell cell = cellIterator.next();
				
				switch(cell.getCellType()){
				case Cell.CELL_TYPE_NUMERIC :
					System.out.println(cell.getNumericCellValue());
					//배열에 대입
					resultArr[rowCnt][colCount] = cell.getNumericCellValue() + "";
					break;
				case Cell.CELL_TYPE_STRING :
					System.out.println(cell.getStringCellValue());
					resultArr[rowCnt][colCount] = cell.getStringCellValue() + "";
				}
				colCount++;
			}
			colCount = 0;
			rowCnt++;
		}
		
		for(int j=0;j<resultArr.length;j++){
			if(!resultArr[j][0].equals("") && resultArr[j][0] != null){
			
				query = "insert into cbt(CBT_EM_QUIZ_CODE, " +
						"	CBT_EM_QUIZ_NUMB             , " +
						"	CBT_EM_MEM_ANSWER            , " +
						"	CBT_EM_ANSWER                , " +
						"	MEM_CODE                     , " +
						"	CBT_QUIZ1                    , " +
						"	CBT_QUIZ2                    , " +
						"	CBT_QUIZ3                    , " +
						"	CBT_QUIZ4                    , " +
						"	CBT_ATTACH_FILE              , " +
						"	CBT_EM_QUIZ) values(" + 
						"'" + resultArr[j][0] + "'," +
						"'" + resultArr[j][1] + "'," + 
						"'" + resultArr[j][2] + "'," + 
						"'" + resultArr[j][3] + "'," + 
						"'" + resultArr[j][4] + "'," + 
						"'" + resultArr[j][5] + "'," + 
						"'" + resultArr[j][6] + "'," + 
						"'" + resultArr[j][7] + "'," + 
						"'" + resultArr[j][8] + "'," + 
						"'" + resultArr[j][9] + "'," + 
						"'" + resultArr[j][10] + "')";
				System.out.println(query);
			}
		}
		fis.close();
	}//end main
}
