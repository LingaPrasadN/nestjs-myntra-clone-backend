/*
  Warnings:

  - You are about to drop the `OtpTable` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `OtpTable`;

-- CreateTable
CREATE TABLE `otptable` (
    `phoneNumber` INTEGER NOT NULL,
    `otp` INTEGER NOT NULL,

    UNIQUE INDEX `otptable_phoneNumber_key`(`phoneNumber`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
