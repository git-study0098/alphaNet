package com.last.excel.controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.last.common.vo.CbtVo;

@Controller
public class ExcelController {
	
	private SqlMapClient client;

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	@RequestMapping("/excel/upload")
	public void excelTest() throws Exception{
		File file = new File("D:/test2.xls");
		
		FileInputStream fis = new FileInputStream(file);
		HSSFWorkbook workBook = new HSSFWorkbook(fis);
		HSSFSheet sheet =  workBook.getSheetAt(0);
		Iterator<Row> rowIterator = sheet.iterator();
		int rowCnt = 0;
		String[][] resultArr = new String[100][10];
//		List<String> resultList = new ArrayList<String>();
		int colCount = 0;
		
		//행의수대로 회전
		while(rowIterator.hasNext() && rowCnt <101){
			Row row = rowIterator.next();
			
			Iterator<Cell> cellIterator = row.cellIterator();
			
			//11번 회전
			while(cellIterator.hasNext()){
				Cell cell = cellIterator.next();
				
				switch(cell.getCellType()){
				case Cell.CELL_TYPE_NUMERIC :
//					System.out.println(cell.getNumericCellValue());
					//배열에 대입
					resultArr[rowCnt][colCount] = cell.getNumericCellValue() + "";
					break;
				case Cell.CELL_TYPE_STRING :
//					System.out.println(cell.getStringCellValue());
					resultArr[rowCnt][colCount] = cell.getStringCellValue() + "";
				}
				colCount++;
			}
			colCount = 0;
			rowCnt++;
		}
		
		CbtVo vo = new CbtVo();
		int result = 0;
		
		for(int j=0;j<resultArr.length;j++){
			vo.setCbt_em_quiz_code( resultArr[j][0]);  
			vo.setCbt_em_quiz_numb( resultArr[j][1]);  
			vo.setCbt_em_mem_answer( resultArr[j][2]); 
			vo.setCbt_em_answer( resultArr[j][3]);     
			vo.setMem_code( resultArr[j][4]);          
			vo.setCbt_quiz1( resultArr[j][5]);         
			vo.setCbt_quiz2( resultArr[j][6]);         
			vo.setCbt_quiz3( resultArr[j][7]);        
			vo.setCbt_quiz4( resultArr[j][8]);         
//			vo.setCbt_attach_file( resultArr[j][9]);   
			vo.setCbt_em_quiz( resultArr[j][9]);       
			System.out.println(vo.getCbt_em_quiz_code());
			System.out.println(vo.getCbt_em_quiz_numb());
			System.out.println(vo.getCbt_em_mem_answer());
			System.out.println(vo.getCbt_em_answer());
			System.out.println(vo.getMem_code());
			System.out.println(vo.getCbt_quiz1());
			System.out.println(vo.getCbt_quiz2());
			System.out.println(vo.getCbt_quiz3());
			System.out.println(vo.getCbt_quiz4());
			System.out.println(vo.getCbt_em_quiz());
			client.insert("insertCbtQuestion", vo);
		}
		fis.close();
	}
}
