/*
  Warnings:

  - You are about to drop the column `userid` on the `otp` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[phoneNumber]` on the table `otp` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `phoneNumber` to the `otp` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `otp_userid_key` ON `otp`;

-- AlterTable
ALTER TABLE `otp` DROP COLUMN `userid`,
    ADD COLUMN `phoneNumber` INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `otp_phoneNumber_key` ON `otp`(`phoneNumber`);
