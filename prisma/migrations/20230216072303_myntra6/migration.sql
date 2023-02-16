/*
  Warnings:

  - You are about to drop the `Product` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ProductImage` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Sizes` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Specification` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Product` DROP FOREIGN KEY `Product_childCategoryId_fkey`;

-- DropForeignKey
ALTER TABLE `ProductImage` DROP FOREIGN KEY `ProductImage_productId_fkey`;

-- DropForeignKey
ALTER TABLE `Sizes` DROP FOREIGN KEY `Sizes_productId_fkey`;

-- DropForeignKey
ALTER TABLE `Specification` DROP FOREIGN KEY `Specification_productId_fkey`;

-- DropTable
DROP TABLE `Product`;

-- DropTable
DROP TABLE `ProductImage`;

-- DropTable
DROP TABLE `Sizes`;

-- DropTable
DROP TABLE `Specification`;
