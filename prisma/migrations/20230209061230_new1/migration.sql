/*
  Warnings:

  - You are about to drop the `temp` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `temp`;

-- CreateTable
CREATE TABLE `user` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `phoneNumber` VARCHAR(191) NOT NULL,
    `fullName` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `gender` VARCHAR(191) NOT NULL,
    `alternateMobileNumber` VARCHAR(191) NOT NULL,
    `hintName` VARCHAR(191) NOT NULL,
    `location` VARCHAR(191) NOT NULL,
    `birthday` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
