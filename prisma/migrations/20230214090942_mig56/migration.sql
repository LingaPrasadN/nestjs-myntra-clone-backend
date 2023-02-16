/*
  Warnings:

  - You are about to drop the column `phoneNumber` on the `OtpTable` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `User` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[mobileNumber]` on the table `OtpTable` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `mobileNumber` to the `OtpTable` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mobileNumber` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `OtpTable_phoneNumber_key` ON `OtpTable`;

-- AlterTable
ALTER TABLE `OtpTable` DROP COLUMN `phoneNumber`,
    ADD COLUMN `mobileNumber` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `User` DROP COLUMN `phoneNumber`,
    ADD COLUMN `mobileNumber` VARCHAR(191) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `OtpTable_mobileNumber_key` ON `OtpTable`(`mobileNumber`);
