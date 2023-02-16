import { Module } from "@nestjs/common";
import { PrismaModule } from "src/PrismaModule/prisma.module";
import { AddressController } from "./address.controller";
import { AddressService } from "./address.service";

@Module({
    imports: [PrismaModule],
    controllers: [AddressController],
    providers: [AddressService],
    exports: [AddressService]
})

export class AddressModule {}