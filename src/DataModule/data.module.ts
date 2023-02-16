import { Module } from "@nestjs/common";
import { PrismaModule } from "src/PrismaModule/prisma.module";
import { DataController } from "./data.controller";
import { DataService } from "./data.service";

@Module({
    imports: [PrismaModule],
    providers: [DataService],
    controllers: [DataController]
})

export class DataModule {

}