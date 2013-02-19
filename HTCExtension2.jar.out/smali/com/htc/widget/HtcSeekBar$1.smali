.class Lcom/htc/widget/HtcSeekBar$1;
.super Ljava/lang/Object;
.source "HtcSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcSeekBar;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcSeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 146
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 160
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar$1;->this$0:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 175
    :cond_1
    return-void
.end method
