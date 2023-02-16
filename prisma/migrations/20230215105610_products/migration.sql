/*
  Warnings:

  - You are about to drop the column `imageLink2` on the `ProductImage` table. All the data in the column will be lost.
  - You are about to drop the column `imageLink3` on the `ProductImage` table. All the data in the column will be lost.
  - You are about to drop the column `imageLink4` on the `ProductImage` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[productId]` on the table `Sizes` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[productId]` on the table `Specification` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `ProductImage` DROP COLUMN `imageLink2`,
    DROP COLUMN `imageLink3`,
    DROP COLUMN `imageLink4`;

-- CreateIndex
CREATE UNIQUE INDEX `Sizes_productId_key` ON `Sizes`(`productId`);

-- CreateIndex
CREATE UNIQUE INDEX `Specification_productId_key` ON `Specification`(`productId`);
