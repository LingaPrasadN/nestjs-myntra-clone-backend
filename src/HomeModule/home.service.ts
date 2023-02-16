import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/PrismaModule/prisma.service";

@Injectable()
export class HomeService {
    constructor(public prismaService: PrismaService) {}
    async getCategories() {
        var q = await this.prismaService.categories.findMany({
            /*
            include: {
                subCat: {
                    include: {
                        superSubCategories: true
                    }
                }
            }
            */
           select: {
            categoryName: true,
            subCat: {
                select: {
                    subCatName: true,
                    superSubCategories: {
                        select: {
                            childCategoryId: true,
                            childCategoryName: true
                        }
                    }
                }
            }
           },
        })
        var arr = q
        var arr2 = arr.map(obj=>obj.categoryName)
        var arr3 = arr.map(obj=>obj.subCat)
        var arr4 = []
        for(var i=0;i<arr3.length;i++) {
            var temp = []
            for (var j=0;j<arr3[i].length;j++) {
                var obj = {}
                obj[arr3[i][j].subCatName]=[]
                for(var k=0; k<arr3[i][j].superSubCategories.length;k++) {
                    obj[arr3[i][j].subCatName].push(arr3[i][j].superSubCategories[k])
                }
                temp.push(obj)
            }
            arr4.push(temp)
        }
        var res = {}
        for(var i=0;i<arr2.length;i++) {
            res[arr2[i]]=arr4[i]
        }
        
        return {
            status: true,
            message: "categories",
            data: res
        }
        
    }
    async getCategoriesM() {
        var q = await this.prismaService.categories.findMany({
          
        })
        return {
            status: true,
            message: "Categories",
            data: q
        }
    }
    async shopByCategoriesM() {
        var q = await this.prismaService.categories.findMany({
            include: {
                subCat: {
                    include: {
                        superSubCategories: true
                    }
                }
            }
        })
        var arr = q
        var arr2= []
        for(var i=0;i<arr.length;i++) {
            var obj = {}
            obj["categoryName"] = arr[i].categoryName
            obj["image"] = arr[i].image
            var q2 = await this.prismaService.subCategories.findMany({
                where: {
                    categoryId: arr[i].categoryId
                },
                include: {
                    superSubCategories: true
                }
            })
            var obj3 ={}
            for(var j=0;j<q2.length;j++) {
                var temp = []
                for(var k=0; k<q2[j].superSubCategories.length;k++) {
                    var obj2 = {}
                    obj2["childCategoryId"]=q2[j].superSubCategories[k].childCategoryId
                    obj2["childCategoryName"]=q2[j].superSubCategories[k].childCategoryName
                    temp.push(obj2)
                }
                
                obj3[q2[j].subCatName] = temp

            }
            
            obj["subCategory"]=obj3
            arr2.push(obj)
        }
        return {
            status: true,
            message: "Shop By Categories",
            data: arr2
        }
    }
}