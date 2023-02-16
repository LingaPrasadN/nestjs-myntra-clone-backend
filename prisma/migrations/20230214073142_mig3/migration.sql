/*
  Warnings:

  - You are about to drop the `Addresses` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Categories` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OtpTable` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ProductImage` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SubCategories` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SuperSubCategories` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Product` DROP FOREIGN KEY `Product_superSubCatId_fkey`;

-- DropForeignKey
ALTER TABLE `ProductImage` DROP FOREIGN KEY `ProductImage_productId_fkey`;

-- DropForeignKey
ALTER TABLE `SubCategories` DROP FOREIGN KEY `SubCategories_catId_fkey`;

-- DropForeignKey
ALTER TABLE `SuperSubCategories` DROP FOREIGN KEY `SuperSubCategories_subCatId_fkey`;

-- DropTable
DROP TABLE `Addresses`;

-- DropTable
DROP TABLE `Categories`;

-- DropTable
DROP TABLE `OtpTable`;

-- DropTable
DROP TABLE `Product`;

-- DropTable
DROP TABLE `ProductImage`;

-- DropTable
DROP TABLE `SubCategories`;

-- DropTable
DROP TABLE `SuperSubCategories`;

-- DropTable
DROP TABLE `User`;
