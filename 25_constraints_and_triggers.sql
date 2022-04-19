
/*--------------------------------------------------------------------------------------------------------------------*/
/*---------------------------------------------ECA_Related_Constraints------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

/*Assignment - Constraint - Check If ECA is available on assignment date */
ALTER TABLE "Assignment"
  ADD CONSTRAINT ASSIGNMENT_ECA_AVAILABILITY CHECK (CheckIfECAIsAvailable("IdECA","DateRange"));

/*Assignment - Constraint - Check If ECA Can Be Assigned an Activity for the period of assignment */
ALTER TABLE "Assignment"
  ADD CONSTRAINT ASSIGNMENT_ECA_PERMIT_ACTIVITY
  CHECK (CheckIfECACanPerformActivityForPeriod("IdECA","IdActivity","DateRange"));


/*--------------------------------------------------------------------------------------------------------------------*/
/*----------------------------------------------UO_Related_Constraints------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

/*Assignment - Constraint - Check if assignment period is during the program period*/
ALTER TABLE "Assignment"
  ADD CONSTRAINT ASSIGNMENT_PERIOD CHECK (CheckPeriodWithProgramPeriod("DateRange","IdProgram"));

/*Prevision - Constraint - Check if prevision period is during the program period*/
ALTER TABLE "Prevision"
  ADD CONSTRAINT PREVISION_PERIOD CHECK (CheckPeriodWithProgramPeriod("DateRange","IdProgram"));



/*--------------------------------------------------------------------------------------------------------------------*/
/*-------------------------------------------------UO_Related_Triggers------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

/*Assignment - Trigger - on update or delete. */
CREATE TRIGGER ASSIGNMENT_UPD_DLT_TRIGGER
    AFTER UPDATE OR DELETE ON "Assignment" FOR EACH ROW
    EXECUTE PROCEDURE OnAssignmentUpdateOrDelete();


/*Prevision - Trigger - on update or delete. */
CREATE TRIGGER PREVISION_UPD_DLT_TRIGGER
    AFTER UPDATE OR DELETE ON "Prevision" FOR EACH ROW
    EXECUTE PROCEDURE OnPrevisionUpdateOrDelete();


/*UOActivity - Trigger - on delete. */
CREATE TRIGGER UO_ACTIVITY_DLT_TRIGGER
    AFTER DELETE ON "UOActivity" FOR EACH ROW
    EXECUTE PROCEDURE OnUOActivityDelete();


/*UO - Trigger - on update or delete. */
CREATE TRIGGER UO_UPT_DLT_TRIGGER
AFTER UPDATE OR DELETE ON "UO" FOR EACH ROW
EXECUTE PROCEDURE OnUOUpdateOrDelete();








