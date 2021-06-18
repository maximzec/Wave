import { Module } from '@nestjs/common';
import { TrackController } from './track/track.controller';
import { TrackModule } from './track/track.module';
import { TrackService } from './track/track.service';


@Module({
  imports: [TrackModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
