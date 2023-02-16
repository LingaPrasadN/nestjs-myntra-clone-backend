import { Controller, Get, Param, Post, Req, UseGuards } from "@nestjs/common";
import { AuthGuard } from "@nestjs/passport";
import { DataService } from "./data.service";

@Controller('data')
export class DataController {
    constructor(public dataService: DataService) {}
    @Get() 
    get() {
        return "OK"
    }

    @UseGuards(AuthGuard('jwt'))
    @Post('addtowish/:productId')
    addToWish(@Param('productId') productId, @Req() req) {
        console.log(req.user.sub)
        return this.dataService.addToWish(productId, req.user.sub)
    }
}