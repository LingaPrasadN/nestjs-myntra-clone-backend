/*
  Warnings:

  - You are about to alter the column `defaultAddr` on the `Addresses` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.

*/
-- AlterTable
ALTER TABLE `Addresses` MODIFY `defaultAddr` BOOLEAN NOT NULL;
