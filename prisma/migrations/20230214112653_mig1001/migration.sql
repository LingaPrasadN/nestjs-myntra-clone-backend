/*
  Warnings:

  - You are about to drop the column `size` on the `Product` table. All the data in the column will be lost.
  - You are about to alter the column `discount` on the `Product` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `mrp` on the `Product` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `price` on the `Product` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `ratings` on the `Product` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `star` on the `Product` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Double`.
  - Added the required column `emiOption` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `offer` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pincode` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productDetails` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `seller` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sizeFit` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `imageLink2` to the `ProductImage` table without a default value. This is not possible if the table is not empty.
  - Added the required column `imageLink3` to the `ProductImage` table without a default value. This is not possible if the table is not empty.
  - Added the required column `imageLink4` to the `ProductImage` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Product` DROP COLUMN `size`,
    ADD COLUMN `emiOption` VARCHAR(191) NOT NULL,
    ADD COLUMN `offer` VARCHAR(191) NOT NULL,
    ADD COLUMN `pincode` VARCHAR(191) NOT NULL,
    ADD COLUMN `productDetails` VARCHAR(191) NOT NULL,
    ADD COLUMN `seller` VARCHAR(191) NOT NULL,
    ADD COLUMN `sizeFit` VARCHAR(191) NOT NULL,
    MODIFY `discount` INTEGER NOT NULL,
    MODIFY `mrp` INTEGER NOT NULL,
    MODIFY `price` INTEGER NOT NULL,
    MODIFY `ratings` INTEGER NOT NULL,
    MODIFY `star` DOUBLE NOT NULL;

-- AlterTable
ALTER TABLE `ProductImage` ADD COLUMN `imageLink2` VARCHAR(191) NOT NULL,
    ADD COLUMN `imageLink3` VARCHAR(191) NOT NULL,
    ADD COLUMN `imageLink4` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `Sizes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` INTEGER NOT NULL,
    `xsamount` INTEGER NOT NULL,
    `samount` INTEGER NOT NULL,
    `mamount` INTEGER NOT NULL,
    `lamount` INTEGER NOT NULL,
    `xlamount` INTEGER NOT NULL,
    `xxlamount` INTEGER NOT NULL,
    `xsavailable` INTEGER NOT NULL,
    `savailable` INTEGER NOT NULL,
    `mavailable` INTEGER NOT NULL,
    `lavailable` INTEGER NOT NULL,
    `xlavailable` INTEGER NOT NULL,
    `xxlavailable` INTEGER NOT NULL,

    UNIQUE INDEX `Sizes_id_key`(`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Specification` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` INTEGER NOT NULL,
    `s1` VARCHAR(191) NOT NULL,
    `v1` VARCHAR(191) NOT NULL,
    `s2` VARCHAR(191) NOT NULL,
    `v2` VARCHAR(191) NOT NULL,
    `s3` VARCHAR(191) NOT NULL,
    `v3` VARCHAR(191) NOT NULL,
    `s4` VARCHAR(191) NOT NULL,
    `v4` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Specification_id_key`(`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Sizes` ADD CONSTRAINT `Sizes_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`productId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Specification` ADD CONSTRAINT `Specification_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`productId`) ON DELETE RESTRICT ON UPDATE CASCADE;
