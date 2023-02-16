import { Controller, Get } from "@nestjs/common";
import { HomeService } from "./home.service";

@Controller('home')
export class HomeController {
    constructor(public homeService: HomeService) {}
    @Get('collection')
    getCategories() {
        return this.homeService.getCategories()
    } 
    @Get('getcategoriesm') 
    getCategoriesM() {
        return this.homeService.getCategoriesM()
    }
    @Get('shopbycategoriesm')
    shopByCategoriesM() {
        return this.homeService.shopByCategoriesM()
    }
}