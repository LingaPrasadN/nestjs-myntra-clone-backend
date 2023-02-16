/*
  Warnings:

  - You are about to drop the `otptable` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `otptable`;

-- CreateTable
CREATE TABLE `OtpTable` (
    `phoneNumber` VARCHAR(191) NOT NULL,
    `otp` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `OtpTable_phoneNumber_key`(`phoneNumber`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
