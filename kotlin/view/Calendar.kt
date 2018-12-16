package models.view

import models.Id

data class Calendar(val competitionTitle: String,
                    val phases: List<CalendarPhase>)

data class CalendarPhase(val isCurrent: Boolean,
                         val name: String,
                         val matchDays: List<MatchDay>)

data class MatchDay(
        val isCurrent: Boolean,
        val name: String,
        val matches: List<Match>)

data class Match(
        override val id: String,
        override val accessibilityText: String,
        val homeTeam: Team,
        val awayTeam: Team,
        val startTime: String,
        val status: MatchStatus,
        val isKnockout: Boolean) : Id, Accessible
