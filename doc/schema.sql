-- SQL dump generated using DBML (dbml-lang.org)
-- Database: MySQL
-- Generated at: 2022-05-27T14:32:14.901Z

CREATE TABLE `blogs` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'ไอดี',
  `created_at` datetime NOT NULL COMMENT 'วันเวลาที่สร้าง',
  `updated_at` datetime NOT NULL COMMENT 'วันเวลาที่อัพเดตล่าสุด',
  `deleted_at` datetime COMMENT 'วันเวลาที่ลบ',
  `title` varchar(255) NOT NULL COMMENT 'หัวข้อ',
  `message` text NOT NULL COMMENT 'ข้อความ',
  `author_name` varchar(255) NOT NULL COMMENT 'ชื่อผู้แต่ง',
  `author_email` varchar(255) NOT NULL COMMENT 'อีเมลผู้แต่ง'
);

ALTER TABLE `blogs` COMMENT = 'ตารางบล็อก';
