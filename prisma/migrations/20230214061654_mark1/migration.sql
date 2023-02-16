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

    UNIQUE INDEX `SubCategories_subCatId_key`(`subCatId`),
    UNIQUE INDEX `SubCategories_catId_key`(`catId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SuperSubCategories` (
    `superSubCatId` INTEGER NOT NULL AUTO_INCREMENT,
    `subCatId` INTEGER NOT NULL,
    `superSubCatName` VARCHAR(191) NOT NULL,
    `superSubCatImage` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `SuperSubCategories_superSubCatId_key`(`superSubCatId`),
    UNIQUE INDEX `SuperSubCategories_subCatId_key`(`subCatId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `SubCategories` ADD CONSTRAINT `SubCategories_catId_fkey` FOREIGN KEY (`catId`) REFERENCES `Categories`(`catId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SuperSubCategories` ADD CONSTRAINT `SuperSubCategories_subCatId_fkey` FOREIGN KEY (`subCatId`) REFERENCES `SubCategories`(`subCatId`) ON DELETE RESTRICT ON UPDATE CASCADE;
