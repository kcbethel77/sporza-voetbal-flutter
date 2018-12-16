package models.view

import models.Id

data class Now(val tips: List<NowRow>)

sealed class NowRow {
    abstract val id: String

    data class Title(override val id: String, val title: String) : NowRow()
    data class MatchTip(override val id: String,
                        val competitionTitle: String,
                        val matches: List<NowMatch>) : NowRow()
    data class BigNews(override val id: String, val news: News) : NowRow()
    data class SmallNewsItems(override val id: String, val news: List<News>) : NowRow()
}

data class NowMatch(override val id: String,
                    val homeTeam: NowTeam,
                    val awayTeam: NowTeam,
                    val startTime: String,
                    val status: String,
                    val homeScore: Int,
                    val awayScore: Int,
                    val statusName: String,
                    val statusLabel: String,
                    override val accessibilityText: String,
                    val isKnockout: Boolean) : Id, Accessible

data class NowTeam(override val id: String,
                   val name: String,
                   val logoUrl: String) : Id