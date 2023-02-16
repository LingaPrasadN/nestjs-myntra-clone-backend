import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { AddressModule } from './AddressModule/address.module';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './AuthModule/auth.module';
import { DataModule } from './DataModule/data.module';
import { HomeModule } from './HomeModule/home.module';
import { ProfileModule } from './ProfileModule/profile.module';

@Module({
  imports: [ConfigModule.forRoot({
    isGlobal: true
  }),
  AuthModule, ProfileModule, ProfileModule, AddressModule, HomeModule, DataModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
