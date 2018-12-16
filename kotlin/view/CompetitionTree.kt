package models.view

enum class CompetitionTreeType {
    TITLE,
    COMPETITION,
    COMPETITION_GROUP
}

data class CompetitionTree(val type: CompetitionTreeType,
                           val title: String? = null,
                           val competition: Competition? = null,
                           val competitionGroup : CompetitionGroup? = null)

enum class CompetitionGroupType {
    TITLE,
    COMPETITION
}

data class CompetitionGroup(val type: CompetitionGroupType,
                            val title: String? = null,
                            val competition: Competition? = null)
