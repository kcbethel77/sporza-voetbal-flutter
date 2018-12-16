package models.view

sealed class MatchStatus {
    data class Live(val minutes: Int) : MatchStatus()
    object Ended : MatchStatus()
}
