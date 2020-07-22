package com.board.utils;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
  
 /*
 public static String fileUpload(String uploadPath,
         String fileName,
         byte[] fileData, String ymdPath) throws Exception {
*/
 public static String fileUpload(String uploadPath,
         String fileName,
         byte[] fileData) throws Exception {
  UUID uid = UUID.randomUUID();
  
  String newFileName = uid + "_" + fileName;
  //String FilePath = uploadPath + ymdPath;
  String FilePath = uploadPath;

  File target = new File(FilePath, newFileName);
  FileCopyUtils.copy(fileData, target);

  return newFileName;
 }
/*
 public static String calcPath(String uploadPath) {
  Calendar cal = Calendar.getInstance();
  String yearPath = File.separator + cal.get(Calendar.YEAR);
  String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
  String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

  makeDir(uploadPath, yearPath, monthPath, datePath);
  

  return datePath;
 }

 private static void makeDir(String uploadPath, String... paths) {

  if (new File(paths[paths.length - 1]).exists()) { return; }

  for (String path : paths) {
   File dirPath = new File(uploadPath + path);

   if (!dirPath.exists()) {
    dirPath.mkdir();
   }
  }
 }
 */
}