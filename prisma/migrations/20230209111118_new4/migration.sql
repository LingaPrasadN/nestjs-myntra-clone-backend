-- CreateTable
CREATE TABLE `otp` (
    `userid` INTEGER NOT NULL,
    `otp` INTEGER NOT NULL,

    UNIQUE INDEX `otp_userid_key`(`userid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
