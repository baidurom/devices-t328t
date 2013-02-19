.class public Lcom/htc/motiv/MotivUtil;
.super Ljava/lang/Object;
.source "MotivUtil.java"


# static fields
.field public static final DEFAULT_MOTIV_PRIORITY:I = 0x2

.field public static final MAX_MOTIV_PRIORITY:I = 0xf

.field public static final MIN_MOTIV_PRIORITY:I = 0x0

.field public static final PRIORITY_ALARM:I = 0xd

.field public static final PRIORITY_EFFECT:I = 0x1

.field public static final PRIORITY_FEEDBACK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdWithPriority(II)I
    .locals 1
    .parameter "id"
    .parameter "priority"

    .prologue
    .line 24
    const/4 v0, -0x1

    return v0
.end method

.method public static setNotificationEffectId(Landroid/app/Notification;I)Z
    .locals 1
    .parameter "n"
    .parameter "id"

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public static setNotificationEffectId(Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 1
    .parameter "n"
    .parameter "idName"

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
