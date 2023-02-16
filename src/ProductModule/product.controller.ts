import { Body, Controller, Get, Param, Post } from "@nestjs/common";
import { ProductService } from "./product.service";

@Controller('product')
export class DataController {

    constructor(public productService: ProductService) {} 

    @Get('getproducts/:sscid')
    getProducts(@Param('sscid') sscid) {
        return this.productService.getProducts(sscid)
    }   

    @Get('getproduct/:pid')
    getProduct(@Param('pid') pid) {
        return this.productService.getProduct(pid)
    }

    @Get('getproductsm/:sscid') 
    getProductsM(@Param('sscid') sscid) {
        return this.productService.getProductsM(sscid)
    }    

    @Get('homepage')
    homepage() {
        return this.productService.homepage()
    }

}