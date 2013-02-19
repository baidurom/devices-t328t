.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;
.super Ljava/lang/Object;
.source "HtcWrapSimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcWrapSimSlot"
.end annotation


# instance fields
.field slotId:I

.field final synthetic this$0:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;


# direct methods
.method constructor <init>(Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;I)V
    .locals 0
    .parameter
    .parameter "slotId"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;->this$0:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p2, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;->slotId:I

    .line 88
    return-void
.end method


# virtual methods
.method public isCTDualmodeCard()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;->this$0:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;

    iget-object v0, v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    iget v1, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;->slotId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SimSlotManager;->getSimSlot(I)Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->isCTDualmodeCard()Z

    move-result v0

    return v0
.end method
