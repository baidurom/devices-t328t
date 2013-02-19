.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final bArabicDisplay:Z


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkResource:I

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/widget/CheckedTextView;->bArabicDisplay:Z

    .line 49
    new-array v0, v1, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v3, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 68
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 73
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 245
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 249
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 251
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->invalidate()V

    .line 253
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 234
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 235
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 238
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 172
    sget-boolean v5, Landroid/widget/CheckedTextView;->bArabicDisplay:Z

    if-eqz v5, :cond_0

    .line 174
    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mirror"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 176
    iget v5, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    sget-boolean v5, Landroid/widget/CheckedTextView;->bArabicDisplay:Z

    if-eqz v5, :cond_1

    .line 184
    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mirror"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 189
    :cond_1
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    .local v0, checkMarkDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v5

    and-int/lit8 v3, v5, 0x70

    .line 192
    .local v3, verticalGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 194
    .local v1, height:I
    const/4 v4, 0x0

    .line 196
    .local v4, y:I
    sparse-switch v3, :sswitch_data_0

    .line 205
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v2

    .line 208
    .local v2, right:I
    sget-boolean v5, Landroid/widget/CheckedTextView;->bArabicDisplay:Z

    if-eqz v5, :cond_2

    .line 210
    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mirror"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 212
    iget v5, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    sub-int v5, v2, v5

    iget v6, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    :cond_2
    iget v5, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    sub-int v5, v2, v5

    iget v6, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    sub-int v6, v2, v6

    iget v7, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v6, v7

    add-int v7, v4, v1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    sget-boolean v5, Landroid/widget/CheckedTextView;->bArabicDisplay:Z

    if-eqz v5, :cond_3

    .line 225
    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/CheckedTextView;->mTag:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mirror"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 230
    .end local v1           #height:I
    .end local v2           #right:I
    .end local v3           #verticalGravity:I
    .end local v4           #y:I
    :cond_3
    return-void

    .line 198
    .restart local v1       #height:I
    .restart local v3       #verticalGravity:I
    .restart local v4       #y:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v5

    sub-int v4, v5, v1

    .line 199
    goto :goto_0

    .line 201
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v4, v5, 0x2

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 258
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 259
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 274
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 275
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mContext:Landroid/content/Context;

    const v2, 0x1040499

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mContext:Landroid/content/Context;

    const v2, 0x104049a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected resolvePadding()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-super {p0}, Landroid/widget/TextView;->resolvePadding()V

    .line 153
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v3, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int v0, v1, v3

    .line 155
    .local v0, newPadding:I
    :goto_0
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v1, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 156
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    .line 157
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 159
    iput-boolean v2, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 161
    :cond_0
    return-void

    .line 153
    .end local v0           #newPadding:I
    :cond_1
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0

    .restart local v0       #newPadding:I
    :cond_2
    move v1, v2

    .line 155
    goto :goto_1
.end method

.method public setCheckMarkDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    iput p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 128
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 131
    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 133
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 134
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 135
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 138
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 142
    :goto_2
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    .line 145
    return-void

    :cond_1
    move v0, v2

    .line 130
    goto :goto_0

    :cond_2
    move v1, v2

    .line 133
    goto :goto_1

    .line 140
    :cond_3
    iput v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 94
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 95
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 97
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 167
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
