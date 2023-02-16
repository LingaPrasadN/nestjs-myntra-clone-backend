-- CreateTable
CREATE TABLE `Product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `childCategoryId` INTEGER NOT NULL,
    `brand` VARCHAR(191) NOT NULL,
    `color` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `discount` INTEGER NOT NULL,
    `mrp` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `price` INTEGER NOT NULL,
    `seller` VARCHAR(191) NOT NULL,
    `ratings` INTEGER NOT NULL,
    `star` DOUBLE NOT NULL,
    `pincode` VARCHAR(191) NOT NULL,
    `offer` VARCHAR(191) NOT NULL,
    `emiOption` VARCHAR(191) NOT NULL,
    `productDetails` VARCHAR(191) NOT NULL,
    `sizeFit` VARCHAR(191) NOT NULL,
    `isWishlisted` BOOLEAN NOT NULL DEFAULT false,

    UNIQUE INDEX `Product_id_key`(`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

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

    UNIQUE INDEX `Sizes_id_key`(`id`),
    UNIQUE INDEX `Sizes_productId_key`(`productId`)
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

    UNIQUE INDEX `Specification_id_key`(`id`),
    UNIQUE INDEX `Specification_productId_key`(`productId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ProductImage` (
    `imageId` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` INTEGER NOT NULL,
    `imageLink` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `ProductImage_imageId_key`(`imageId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_childCategoryId_fkey` FOREIGN KEY (`childCategoryId`) REFERENCES `SuperSubCategories`(`childCategoryId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Sizes` ADD CONSTRAINT `Sizes_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Specification` ADD CONSTRAINT `Specification_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProductImage` ADD CONSTRAINT `ProductImage_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
