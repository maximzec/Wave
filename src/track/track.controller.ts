import { Controller, Get } from "@nestjs/common";



@Controller('/tracks')
export class TrackController {
    create(){}
    
    @Get('/get-all')
    getAll(){
        return "WORK"
    }

    getOne(){}

    delete(){}

}