.class public Lcom/htc/wrap/android/view/HtcWrapView;
.super Landroid/view/View;
.source "HtcWrapView.java"


# static fields
.field public static final PRESSED_STATE_SET:[I


# instance fields
.field public mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 424
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sput-object v0, Lcom/htc/wrap/android/view/HtcWrapView;->PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public static dispatchPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static getCornerRadius(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getCornerRadius()I

    move-result v0

    return v0
.end method

.method public static getPenDelegate(Landroid/view/View;)Landroid/view/PenDelegate;
    .locals 1
    .parameter "view"

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getPenDelegate()Landroid/view/PenDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static isBottomCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/view/View;->isBottomCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static isPenAsTouch(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/view/View;->isPenAsTouch()Z

    move-result v0

    return v0
.end method

.method public static isRoundedCornerEnabled(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/view/View;->isRoundedCornerEnabled()Z

    move-result v0

    return v0
.end method

.method public static isTopCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/view/View;->isTopCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static onPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Landroid/view/View;->onPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static setCornerAntiAliased(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "aa"

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerAntiAliased(Z)V

    .line 336
    return-void
.end method

.method public static setCornerRadius(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "radius"

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerRadius(I)V

    .line 307
    return-void
.end method

.method public static setCornerStrokeColor(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "color"

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeColor(I)V

    .line 328
    return-void
.end method

.method public static setCornerStrokeWidth(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "width"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeWidth(I)V

    .line 320
    return-void
.end method

.method public static setDispatchPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "methodName"

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Landroid/view/View;->setDispatchPenEvent(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public static setOnPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "methodName"

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnPenEvent(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static setOnPenListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "view"
    .parameter "l"

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnPenListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    return-void
.end method

.method public static setPenAsTouch(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "penAsTouch"

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Landroid/view/View;->setPenAsTouch(Z)V

    .line 411
    return-void
.end method

.method public static setPenDelegate(Landroid/view/View;Landroid/view/PenDelegate;)V
    .locals 0
    .parameter "view"
    .parameter "delegate"

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Landroid/view/View;->setPenDelegate(Landroid/view/PenDelegate;)V

    .line 393
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "roundCorner"

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 272
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;ZZ)V
    .locals 0
    .parameter "view"
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 275
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 276
    return-void
.end method


# virtual methods
.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/view/View;->getCornerRadius()I

    move-result v0

    return v0
.end method

.method public getPenDelegate()Landroid/view/PenDelegate;
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/view/View;->getPenDelegate()Landroid/view/PenDelegate;

    move-result-object v0

    return-object v0
.end method

.method public isBottomCornerRounded()Z
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/view/View;->isBottomCornerRounded()Z

    move-result v0

    return v0
.end method

.method public isPenAsTouch()Z
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/view/View;->isPenAsTouch()Z

    move-result v0

    return v0
.end method

.method public isRoundedCornerEnabled()Z
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/view/View;->isRoundedCornerEnabled()Z

    move-result v0

    return v0
.end method

.method public isTopCornerRounded()Z
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/view/View;->isTopCornerRounded()Z

    move-result v0

    return v0
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/view/View;->onPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCornerAntiAliased(Z)V
    .locals 0
    .parameter "aa"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/view/View;->setCornerAntiAliased(Z)V

    .line 152
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/view/View;->setCornerRadius(I)V

    .line 93
    return-void
.end method

.method public setCornerStrokeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->setCornerStrokeColor(I)V

    .line 137
    return-void
.end method

.method public setCornerStrokeWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->setCornerStrokeWidth(I)V

    .line 118
    return-void
.end method

.method public setDispatchPenEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "methodName"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->setDispatchPenEvent(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setOnPenEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "methodName"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->setOnPenEvent(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setOnPenListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/view/View;->setOnPenListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    return-void
.end method

.method public setPenAsTouch(Z)V
    .locals 0
    .parameter "penAsTouch"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->setPenAsTouch(Z)V

    .line 255
    return-void
.end method

.method public setPenDelegate(Landroid/view/PenDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/view/View;->setPenDelegate(Landroid/view/PenDelegate;)V

    .line 233
    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 0
    .parameter "roundCorner"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 38
    return-void
.end method

.method public setRoundedCornerEnabled(ZZ)V
    .locals 0
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 52
    return-void
.end method
