/*
  Warnings:

  - Added the required column `city` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `defaultAddr` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `locality` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mobileNumber` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pincode` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `satOpen` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `state` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sunOpen` to the `Addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `typeOfAddress` to the `Addresses` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Addresses` ADD COLUMN `city` VARCHAR(191) NOT NULL,
    ADD COLUMN `defaultAddr` VARCHAR(191) NOT NULL,
    ADD COLUMN `locality` VARCHAR(191) NOT NULL,
    ADD COLUMN `mobileNumber` VARCHAR(191) NOT NULL,
    ADD COLUMN `name` VARCHAR(191) NOT NULL,
    ADD COLUMN `pincode` VARCHAR(191) NOT NULL,
    ADD COLUMN `satOpen` BOOLEAN NOT NULL,
    ADD COLUMN `state` VARCHAR(191) NOT NULL,
    ADD COLUMN `sunOpen` BOOLEAN NOT NULL,
    ADD COLUMN `typeOfAddress` VARCHAR(191) NOT NULL;
