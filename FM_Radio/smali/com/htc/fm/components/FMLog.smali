.class public Lcom/htc/fm/components/FMLog;
.super Ljava/lang/Object;
.source "FMLog.java"


# static fields
.field public static final ATS_LOG_SUFFIX_COMPLETE:Ljava/lang/String; = "complete"

.field public static final ATS_LOG_SUFFIX_LANUCH:Ljava/lang/String; = "launch"

.field public static final ATS_LOG_SUFFIX_START:Ljava/lang/String; = "start"

.field public static final ATS_LOG_SUFFIX_STOP:Ljava/lang/String; = "stop"

.field public static final ENTER_METHOD:Ljava/lang/String; = "+"

.field public static final EXIT_METHOD:Ljava/lang/String; = "-"

.field private static final FM_LOG_RADIO_TAG:Ljava/lang/String; = "[FMRadio]"

.field private static final FM_LOG_WHITESPACE:Ljava/lang/String; = "  "

.field public static mIsDebug:Z

.field static mWhiteSpace:Ljava/lang/String;

.field static sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atsLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"
    .parameter "suffix"

    .prologue
    .line 70
    return-void
.end method

.method private static buildTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    .line 74
    sget-object v2, Lcom/htc/fm/components/FMLog;->sb:Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v2, Lcom/htc/fm/components/FMLog;->sb:Ljava/lang/StringBuilder;

    .line 79
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 80
    .local v0, firstChar:Ljava/lang/Character;
    const-string v2, "+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_1
    sget-object v2, Lcom/htc/fm/components/FMLog;->sb:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[FMRadio]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 77
    .end local v0           #firstChar:Ljava/lang/Character;
    :cond_1
    sget-object v2, Lcom/htc/fm/components/FMLog;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 82
    .restart local v0       #firstChar:Ljava/lang/Character;
    :cond_2
    const-string v2, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 84
    .local v1, length:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 85
    sget-object v2, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    sget-object v3, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/htc/fm/components/FMLog;->mWhiteSpace:Ljava/lang/String;

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/htc/fm/components/FMLog;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 53
    sget-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/htc/fm/components/FMLog;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFMCommandById(I)Ljava/lang/String;
    .locals 1
    .parameter "pId"

    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 106
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "WHAT_TURN_ON"

    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "WHAT_TURN_OFF"

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "WHAT_SEEK_UP"

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v0, "WHAT_SEEK_DOWN"

    goto :goto_0

    .line 104
    :pswitch_4
    const-string v0, "WHAT_TUNE"

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/htc/fm/components/FMLog;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static turnOffDebug()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    .line 26
    return-void
.end method

.method public static turnOnDebug()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    .line 22
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/htc/fm/components/FMLog;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 47
    sget-boolean v0, Lcom/htc/fm/components/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/htc/fm/components/FMLog;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
