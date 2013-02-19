.class public final Landroid/provider/HtcExCalendar;
.super Landroid/provider/HtcCalendarContract;
.source "HtcExCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcExCalendar$CalendarSmsAlerts;,
        Landroid/provider/HtcExCalendar$ExInstances;,
        Landroid/provider/HtcExCalendar$ExReminders;,
        Landroid/provider/HtcExCalendar$ExCalendarAlerts;,
        Landroid/provider/HtcExCalendar$ExCalendars;,
        Landroid/provider/HtcExCalendar$ExEvents;,
        Landroid/provider/HtcExCalendar$ExRemindersColumns;,
        Landroid/provider/HtcExCalendar$FacebookColumns;,
        Landroid/provider/HtcExCalendar$ExCalendarsColumns;,
        Landroid/provider/HtcExCalendar$ExEventsColumns;,
        Landroid/provider/HtcExCalendar$CalendarsDisplayOrder;
    }
.end annotation


# static fields
.field public static final ACTION_EVENT_CHANGED:Ljava/lang/String; = "com.htc.calendar.event_changed"

.field public static final CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri; = null

.field public static final EAS_CLEAN_TRACK:Ljava/lang/String; = "cleanTrack"

.field public static final EAS_TRACKING_URI:Landroid/net/Uri; = null

.field public static final EXCHANGE_CAL_ID:I = 0x2

.field public static final MYPHONEBOOK_CAL_ID:I = 0x5

.field public static final MYPHONEBOOK_TRACKING_URI:Landroid/net/Uri; = null

.field public static final PCSC_CAL_ID:I = 0x1

.field public static final PCSC_TRACKING_URI:Landroid/net/Uri;

.field private static isFacebookAccountTypeChecked:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, -0x1

    sput v0, Landroid/provider/HtcExCalendar;->isFacebookAccountTypeChecked:I

    .line 92
    const-string v0, "content://com.android.calendar/eas_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar;->EAS_TRACKING_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://com.android.calendar/easSyncInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    .line 102
    const-string v0, "content://com.android.calendar/pcsc_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar;->PCSC_TRACKING_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://com.android.calendar/myphonebook_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar;->MYPHONEBOOK_TRACKING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/provider/HtcCalendarContract;-><init>()V

    .line 365
    return-void
.end method

.method public static getGoogleAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.google"

    return-object v0
.end method

.method public static getHtcEasAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "com.htc.android.mail.eas"

    return-object v0
.end method

.method public static getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 65
    const-string v0, "com.facebook.auth.login"

    .line 66
    .local v0, FacebookSSOType:Ljava/lang/String;
    const-string v1, "com.htc.socialnetwork.facebook"

    .line 68
    .local v1, FacebookType:Ljava/lang/String;
    sget v6, Landroid/provider/HtcExCalendar;->isFacebookAccountTypeChecked:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 69
    const/4 v6, 0x0

    sput v6, Landroid/provider/HtcExCalendar;->isFacebookAccountTypeChecked:I

    .line 71
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 72
    .local v2, authDescs:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v2

    .line 73
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 74
    aget-object v6, v2, v3

    iget-object v5, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 75
    .local v5, tt:Ljava/lang/String;
    aget-object v6, v2, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    sput v8, Landroid/provider/HtcExCalendar;->isFacebookAccountTypeChecked:I

    .line 73
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .end local v2           #authDescs:[Landroid/accounts/AuthenticatorDescription;
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v5           #tt:Ljava/lang/String;
    :cond_1
    sget v6, Landroid/provider/HtcExCalendar;->isFacebookAccountTypeChecked:I

    if-ne v6, v8, :cond_2

    .end local v0           #FacebookSSOType:Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0       #FacebookSSOType:Ljava/lang/String;
    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getHtcGooleTaskAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "com.google/task"

    return-object v0
.end method

.method public static getHtcGreetingAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "HTC_BirthdayEvent"

    return-object v0
.end method

.method public static getHtcLocalTaskAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "com.htc.task/task"

    return-object v0
.end method

.method public static getHtcPcSyncAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.htc.pcsc"

    return-object v0
.end method

.method public static getHtcTaskAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.htc.android.mail.eas/task"

    return-object v0
.end method

.method public static getHtcWindowsLiveAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "com.htc.android.windowslive"

    return-object v0
.end method

.method public static getHtcWindowsLiveTaskAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "com.htc.android.windowslive/task"

    return-object v0
.end method

.method public static getTmiMyphonebookAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "com.tmi.myphonebook"

    return-object v0
.end method
