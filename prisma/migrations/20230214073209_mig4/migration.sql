-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `phoneNumber` VARCHAR(191) NOT NULL,
    `fullName` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `gender` VARCHAR(191) NOT NULL,
    `alternateMobileNumber` VARCHAR(191) NOT NULL,
    `hintName` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `OtpTable` (
    `phoneNumber` VARCHAR(191) NOT NULL,
    `otp` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `OtpTable_phoneNumber_key`(`phoneNumber`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Addresses` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `mobileNumber` VARCHAR(191) NOT NULL,
    `pincode` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `locality` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `typeOfAddress` VARCHAR(191) NOT NULL,
    `satOpen` BOOLEAN NOT NULL,
    `sunOpen` BOOLEAN NOT NULL,
    `defaultAddr` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Categories` (
    `catId` INTEGER NOT NULL AUTO_INCREMENT,
    `catName` VARCHAR(191) NOT NULL,
    `catImage` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Categories_catId_key`(`catId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SubCategories` (
    `subCatId` INTEGER NOT NULL AUTO_INCREMENT,
    `catId` INTEGER NOT NULL,
    `subCatName` VARCHAR(191) NOT NULL,
    `subCatImage` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `SubCategories_subCatId_key`(`subCatId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SuperSubCategories` (
    `superSubCatId` INTEGER NOT NULL AUTO_INCREMENT,
    `subCatId` INTEGER NOT NULL,
    `superSubCatName` VARCHAR(191) NOT NULL,
    `superSubCatImage` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `SuperSubCategories_superSubCatId_key`(`superSubCatId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Product` (
    `productId` INTEGER NOT NULL AUTO_INCREMENT,
    `superSubCatId` INTEGER NOT NULL,
    `productName` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Product_productId_key`(`productId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ProductImage` (
    `imageId` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` INTEGER NOT NULL,
    `imageLink` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `ProductImage_imageId_key`(`imageId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `SubCategories` ADD CONSTRAINT `SubCategories_catId_fkey` FOREIGN KEY (`catId`) REFERENCES `Categories`(`catId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SuperSubCategories` ADD CONSTRAINT `SuperSubCategories_subCatId_fkey` FOREIGN KEY (`subCatId`) REFERENCES `SubCategories`(`subCatId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_superSubCatId_fkey` FOREIGN KEY (`superSubCatId`) REFERENCES `SuperSubCategories`(`superSubCatId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProductImage` ADD CONSTRAINT `ProductImage_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`productId`) ON DELETE RESTRICT ON UPDATE CASCADE;
