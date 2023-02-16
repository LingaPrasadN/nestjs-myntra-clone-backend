-- CreateTable
CREATE TABLE `Jwt` (
    `phoneNumber` VARCHAR(191) NOT NULL,
    `jwt` VARCHAR(191) NOT NULL,
    `date` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Jwt_phoneNumber_key`(`phoneNumber`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
