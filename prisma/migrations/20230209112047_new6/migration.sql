/*
  Warnings:

  - You are about to drop the `otp` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `otp`;

-- CreateTable
CREATE TABLE `OtpTable` (
    `phoneNumber` INTEGER NOT NULL,
    `otp` INTEGER NOT NULL,

    UNIQUE INDEX `OtpTable_phoneNumber_key`(`phoneNumber`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
