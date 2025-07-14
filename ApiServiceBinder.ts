import {interfaces} from 'inversify';

import { AdministrationService } from './api/administration.service';
import { CodingsService } from './api/codings.service';
import { FormsService } from './api/forms.service';
import { IntervalsService } from './api/intervals.service';
import { JobsService } from './api/jobs.service';
import { QueriesService } from './api/queries.service';
import { RecordRevisionsService } from './api/recordRevisions.service';
import { RecordsService } from './api/records.service';
import { SitesService } from './api/sites.service';
import { StudiesService } from './api/studies.service';
import { SubjectsService } from './api/subjects.service';
import { VariablesService } from './api/variables.service';
import { VisitsService } from './api/visits.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<AdministrationService>('AdministrationService').to(AdministrationService).inSingletonScope();
        container.bind<CodingsService>('CodingsService').to(CodingsService).inSingletonScope();
        container.bind<FormsService>('FormsService').to(FormsService).inSingletonScope();
        container.bind<IntervalsService>('IntervalsService').to(IntervalsService).inSingletonScope();
        container.bind<JobsService>('JobsService').to(JobsService).inSingletonScope();
        container.bind<QueriesService>('QueriesService').to(QueriesService).inSingletonScope();
        container.bind<RecordRevisionsService>('RecordRevisionsService').to(RecordRevisionsService).inSingletonScope();
        container.bind<RecordsService>('RecordsService').to(RecordsService).inSingletonScope();
        container.bind<SitesService>('SitesService').to(SitesService).inSingletonScope();
        container.bind<StudiesService>('StudiesService').to(StudiesService).inSingletonScope();
        container.bind<SubjectsService>('SubjectsService').to(SubjectsService).inSingletonScope();
        container.bind<VariablesService>('VariablesService').to(VariablesService).inSingletonScope();
        container.bind<VisitsService>('VisitsService').to(VisitsService).inSingletonScope();
    }
}
