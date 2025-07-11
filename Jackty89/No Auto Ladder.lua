ModeName = 'No Auto Ladder'
Author = 'Methatronc/Jackty89'

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModeName,
    MOD_DESCRIPTION = ModeName,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = 'GCCHARACTERGLOBALS.GLOBAL.MBIN',
                    MXML_CHANGE_TABLE =
                    {
                        {
                            VALUE_CHANGE_TABLE =
                            {
                                {'LadderDistanceToAutoMount', '-1'},
                                {'SitPostureChangeTimeMin', '0.1'},
                                {'SitPostureChangeTimeMax', '1'}
                            }
                        }
                    }
                }
            }
        }
    }
}