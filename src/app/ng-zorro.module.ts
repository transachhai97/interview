import { NgModule } from '@angular/core';
import { NzIconModule } from 'ng-zorro-antd/icon';
import { NzButtonModule } from 'ng-zorro-antd/button';
import { NzDatePickerModule } from 'ng-zorro-antd/date-picker';

@NgModule({
  exports: [
    NzIconModule,
    NzButtonModule,
    NzDatePickerModule,
  ],
})
export class NgZorroModule {}