import { Module } from "@nestjs/common";
import { AppModule } from "src/app.module";
import { TrackController } from "./track.controller";
import { TrackService } from "./track.service";




@Module({
    imports:[],
    controllers: [TrackController],
    providers: [TrackService]

})
export class TrackModule{}