import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/PrismaModule/prisma.service";

@Injectable()
export class DataService {
    constructor(public prismaService: PrismaService) {}
    async addToWish(productId, sub) {
        var q = await this.prismaService.user.findFirst({
            where: {
                mobileNumber: sub
            }
        })

        var q2 = await this.prismaService.wishList.create({
            data: {
                userId: q.id,
                productId: parseInt(productId)
            }
        })

        return {
            status: true,
            message: "Added to wishlist",
            data: null
        }
    }
}