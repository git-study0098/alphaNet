package com.last.excel.controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.vo.CbtVo;

@Controller
public class ExcelController {
	
	@Autowired
	private ExcelService excelService;
	
	public void setExcelService(ExcelService excelService) {
		this.excelService = excelService;
	}

	@RequestMapping("/excel/upload")
	public String excelTest() throws Exception{
		File file = new File("D:/정보처리기사 2회.xls");
		
		FileInputStream fis = new FileInputStream(file);
		HSSFWorkbook workBook = new HSSFWorkbook(fis);
		HSSFSheet sheet =  workBook.getSheetAt(0);
		Iterator<Row> rowIterator = sheet.iterator();
		int rowCnt = 0;
		String[][] resultArr = new String[100][16];
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
					//배열에 대입
					resultArr[rowCnt][colCount] = (int)cell.getNumericCellValue() + "";
					break;
				case Cell.CELL_TYPE_STRING :
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
			vo.setCbt_em_quiz_numb(resultArr[j][1]);  
			vo.setCbt_em_mem_answer(resultArr[j][2]); 
			vo.setCbt_em_answer( resultArr[j][3]);     
			vo.setMem_code( resultArr[j][4]);          
			vo.setCbt_em_quiz( resultArr[j][5]);       
			vo.setCbt_quiz1( resultArr[j][6]);        
			vo.setCbt_quiz2( resultArr[j][7]);         
			vo.setCbt_quiz3( resultArr[j][8]);        
			vo.setCbt_quiz4( resultArr[j][9]);         
			vo.setCbt_question_img( resultArr[j][10]);
			vo.setCbt_name(resultArr[j][11]);
			vo.setCbt_answer1(resultArr[j][12]);
			vo.setCbt_answer2(resultArr[j][13]);
			vo.setCbt_answer3(resultArr[j][14]);
			vo.setCbt_answer4(resultArr[j][15]);
			excelService.insertCbtQuestion(vo);
		}
		fis.close();
		
		return "redirect:http://192.168.204.31/alphanet/admin/cbt";
	}
}
