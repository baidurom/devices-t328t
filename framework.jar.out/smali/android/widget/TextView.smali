.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$3;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$PopupWindowView;,
        Landroid/widget/TextView$MagnifierController;,
        Landroid/widget/TextView$SelectionEndHandleView;,
        Landroid/widget/TextView$SelectionStartHandleView;,
        Landroid/widget/TextView$InsertionHandleView;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$ActionPopupWindow;,
        Landroid/widget/TextView$SelectionActionModeCallback;,
        Landroid/widget/TextView$SuggestionsPopupWindow;,
        Landroid/widget/TextView$PinnedPopupWindow;,
        Landroid/widget/TextView$PositionListener;,
        Landroid/widget/TextView$TextViewPositionListener;,
        Landroid/widget/TextView$DragLocalState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$EasyEditPopupWindow;,
        Landroid/widget/TextView$EasyEditSpanController;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CorrectionHighlighter;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$TextAlign;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field static final HANDLE_HEIGHT:I = 0x28

.field private static final ID_COPY:I = #id@copy#t

.field private static final ID_CUT:I = #id@cut#t

.field private static final ID_MORE:I = #id@overflow_menu_presenter#t

.field private static final ID_PASTE:I = #id@paste#t

.field private static final ID_SELECT_ALL:I = #id@selectAll#t

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I = null

.field static final NONIUS_HEIGHT:I = 0x1e

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static final PRIORITY:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x100000

.field private static sLastCutOrCopyTime:J

.field private static final sTempRect:Landroid/graphics/RectF;

.field private static final sTmpPosition:[F


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCurrentAlpha:I

.field private mCursorCount:I

.field private final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorDrawableRes:I

.field private mCursorVisible:Z

.field private mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDesiredHeightAtMeasure:I

.field private mDiscardNextActionUp:Z

.field private mDispatchTemporaryDetach:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mIgnoreActionUpEvent:Z

.field private mInBatchEditControllers:Z

.field private mInMoreMenuPressed:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

.field private mLastDownPositionX:F

.field private mLastDownPositionY:F

.field private mLastScroll:J

.field protected mLayout:Landroid/text/Layout;

.field private mLayoutAlignment:Landroid/text/Layout$Alignment;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnifierController:Landroid/widget/TextView$MagnifierController;

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPositionListener:Landroid/widget/TextView$PositionListener;

.field private mPreDrawState:I

.field private mResolvedDrawables:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mSearchText:Ljava/lang/CharSequence;

.field private mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionActionMode:Landroid/view/ActionMode;

.field private mSelectionControllerEnabled:Z

.field private mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSoftInputShownOnFocus:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSquaredTouchSlopDistance:I

.field private mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextAlign:Landroid/widget/TextView$TextAlign;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mTextEditSuggestionItemLayout:I

.field private mTextIsSelectable:Z

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSelectHandleLeftRes:I

.field private mTextSelectHandleRes:I

.field private mTextSelectHandleRightRes:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z

.field private mWordIterator:Landroid/text/method/WordIterator;

.field private mWordSegment:Lcom/android/internal/util/WordSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 420
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 421
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 423
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 6531
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 12484
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 12485
    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Landroid/widget/TextView;->sTmpPosition:[F

    .line 12503
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 12505
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 12506
    const/16 v1, 0x14

    sput v1, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 12512
    new-array v1, v4, [I

    const v2, #attr@state_multiline#t

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 448
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 452
    const v0, #attr@textViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 66
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 459
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    const/16 v63, 0xff

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 245
    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [I

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 258
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 259
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 261
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 262
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 269
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 271
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 307
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 309
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 310
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 315
    const/16 v63, 0x3

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 351
    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 366
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 372
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    .line 378
    sget-object v63, Landroid/widget/TextView$TextAlign;->INHERIT:Landroid/widget/TextView$TextAlign;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    .line 384
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mResolvedDrawables:Z

    .line 391
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 9279
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mInMoreMenuPressed:Z

    .line 12400
    sget-object v63, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 12402
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 12413
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 12419
    const v63, 0x6633b5e5

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 12430
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 12448
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 12450
    const v63, 0x800033

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 12454
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 12456
    const/high16 v63, 0x3f80

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 12457
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 12458
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 12464
    const v63, 0x7fffffff

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 12465
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 12466
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 12467
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 12469
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 12470
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 12472
    const v63, 0x7fffffff

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 12473
    const/16 v63, 0x2

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 12474
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 12475
    const/16 v63, 0x2

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 12478
    const/16 v63, -0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 12479
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 12483
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 12494
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 12501
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 12504
    sget-object v63, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 460
    const-string v63, ""

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    .line 463
    .local v46, res:Landroid/content/res/Resources;
    invoke-virtual/range {v46 .. v46}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v17

    .line 465
    .local v17, compat:Landroid/content/res/CompatibilityInfo;
    new-instance v63, Landroid/text/TextPaint;

    const/16 v64, 0x1

    invoke-direct/range {v63 .. v64}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v63, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v64

    move-object/from16 v0, v64

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v64, v0

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v63, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 473
    new-instance v63, Landroid/graphics/Paint;

    const/16 v64, 0x1

    invoke-direct/range {v63 .. v64}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v63, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 477
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 479
    const/16 v53, 0x0

    .line 480
    .local v53, textColorHighlight:I
    const/16 v52, 0x0

    .line 481
    .local v52, textColor:Landroid/content/res/ColorStateList;
    const/16 v54, 0x0

    .line 482
    .local v54, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v55, 0x0

    .line 483
    .local v55, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v56, 0xf

    .line 484
    .local v56, textSize:I
    const/16 v59, -0x1

    .line 485
    .local v59, typefaceIndex:I
    const/16 v50, -0x1

    .line 486
    .local v50, styleIndex:I
    const/4 v6, 0x0

    .line 488
    .local v6, allCaps:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v57

    .line 496
    .local v57, theme:Landroid/content/res/Resources$Theme;
    sget-object v63, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    const/16 v64, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    move-object/from16 v2, v63

    move/from16 v3, p3

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 498
    .local v5, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 499
    .local v8, appearance:Landroid/content/res/TypedArray;
    const/16 v63, 0x0

    const/16 v64, -0x1

    move/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 501
    .local v7, ap:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    const/16 v63, -0x1

    move/from16 v0, v63

    if-eq v7, v0, :cond_0

    .line 503
    sget-object v63, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v57

    move-object/from16 v1, v63

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 506
    :cond_0
    if-eqz v8, :cond_2

    .line 507
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v39

    .line 508
    .local v39, n:I
    const/16 v34, 0x0

    .local v34, i:I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    .line 509
    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 511
    .local v9, attr:I
    packed-switch v9, :pswitch_data_0

    .line 508
    :goto_1
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 513
    :pswitch_0
    move/from16 v0, v53

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v53

    .line 514
    goto :goto_1

    .line 517
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v52

    .line 518
    goto :goto_1

    .line 521
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v54

    .line 522
    goto :goto_1

    .line 525
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    .line 526
    goto :goto_1

    .line 529
    :pswitch_4
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v56

    .line 530
    goto :goto_1

    .line 533
    :pswitch_5
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v59

    .line 534
    goto :goto_1

    .line 537
    :pswitch_6
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 538
    goto :goto_1

    .line 541
    :pswitch_7
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto :goto_1

    .line 546
    .end local v9           #attr:I
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 549
    .end local v34           #i:I
    .end local v39           #n:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v29

    .line 550
    .local v29, editable:Z
    const/16 v35, 0x0

    .line 551
    .local v35, inputMethod:Ljava/lang/CharSequence;
    const/16 v41, 0x0

    .line 552
    .local v41, numeric:I
    const/16 v18, 0x0

    .line 553
    .local v18, digits:Ljava/lang/CharSequence;
    const/16 v44, 0x0

    .line 554
    .local v44, phone:Z
    const/4 v11, 0x0

    .line 555
    .local v11, autotext:Z
    const/4 v10, -0x1

    .line 556
    .local v10, autocap:I
    const/4 v13, 0x0

    .line 557
    .local v13, buffertype:I
    const/16 v47, 0x0

    .line 558
    .local v47, selectallonfocus:Z
    const/16 v21, 0x0

    .local v21, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .local v25, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    .line 559
    .local v23, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .local v19, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .local v24, drawableStart:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 560
    .local v20, drawableEnd:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 561
    .local v22, drawablePadding:I
    const/16 v30, -0x1

    .line 562
    .local v30, ellipsize:I
    const/16 v49, 0x0

    .line 563
    .local v49, singleLine:Z
    const/16 v38, -0x1

    .line 564
    .local v38, maxlength:I
    const-string v51, ""

    .line 565
    .local v51, text:Ljava/lang/CharSequence;
    const/16 v33, 0x0

    .line 566
    .local v33, hint:Ljava/lang/CharSequence;
    const/16 v48, 0x0

    .line 567
    .local v48, shadowcolor:I
    const/16 v26, 0x0

    .local v26, dx:F
    const/16 v27, 0x0

    .local v27, dy:F
    const/16 v45, 0x0

    .line 568
    .local v45, r:F
    const/16 v42, 0x0

    .line 569
    .local v42, password:Z
    const/16 v36, 0x0

    .line 571
    .local v36, inputType:I
    sget-object v63, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v64, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    move-object/from16 v2, v63

    move/from16 v3, p3

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 574
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v39

    .line 575
    .restart local v39       #n:I
    const/16 v34, 0x0

    .restart local v34       #i:I
    :goto_2
    move/from16 v0, v34

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    .line 576
    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 578
    .restart local v9       #attr:I
    packed-switch v9, :pswitch_data_1

    .line 575
    :cond_3
    :goto_3
    :pswitch_8
    add-int/lit8 v34, v34, 0x1

    goto :goto_2

    .line 580
    :pswitch_9
    move/from16 v0, v29

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    .line 581
    goto :goto_3

    .line 584
    :pswitch_a
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    .line 585
    goto :goto_3

    .line 588
    :pswitch_b
    move/from16 v0, v41

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    .line 589
    goto :goto_3

    .line 592
    :pswitch_c
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 593
    goto :goto_3

    .line 596
    :pswitch_d
    move/from16 v0, v44

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v44

    .line 597
    goto :goto_3

    .line 600
    :pswitch_e
    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 601
    goto :goto_3

    .line 604
    :pswitch_f
    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 605
    goto :goto_3

    .line 608
    :pswitch_10
    invoke-virtual {v5, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 609
    goto :goto_3

    .line 612
    :pswitch_11
    move/from16 v0, v47

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v47

    .line 613
    goto :goto_3

    .line 616
    :pswitch_12
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 620
    :pswitch_13
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 630
    :pswitch_14
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 631
    goto :goto_3

    .line 634
    :pswitch_15
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 635
    goto :goto_3

    .line 638
    :pswitch_16
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 639
    goto :goto_3

    .line 642
    :pswitch_17
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 643
    goto :goto_3

    .line 646
    :pswitch_18
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 647
    goto :goto_3

    .line 650
    :pswitch_19
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 651
    goto :goto_3

    .line 654
    :pswitch_1a
    move/from16 v0, v22

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 655
    goto :goto_3

    .line 658
    :pswitch_1b
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 662
    :pswitch_1c
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 666
    :pswitch_1d
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 670
    :pswitch_1e
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 674
    :pswitch_1f
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 678
    :pswitch_20
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 682
    :pswitch_21
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 686
    :pswitch_22
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 690
    :pswitch_23
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 694
    :pswitch_24
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 698
    :pswitch_25
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 702
    :pswitch_26
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 706
    :pswitch_27
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 710
    :pswitch_28
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .line 711
    goto/16 :goto_3

    .line 714
    :pswitch_29
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v51

    .line 715
    goto/16 :goto_3

    .line 718
    :pswitch_2a
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    if-eqz v63, :cond_3

    .line 719
    const/16 v63, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 724
    :pswitch_2b
    move/from16 v0, v49

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v49

    .line 725
    goto/16 :goto_3

    .line 728
    :pswitch_2c
    move/from16 v0, v30

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 729
    goto/16 :goto_3

    .line 732
    :pswitch_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v63, v0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 736
    :pswitch_2e
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    if-nez v63, :cond_3

    .line 737
    const/16 v63, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 742
    :pswitch_2f
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    if-nez v63, :cond_3

    .line 743
    const/16 v63, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 748
    :pswitch_30
    const/16 v63, -0x1

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    .line 749
    goto/16 :goto_3

    .line 752
    :pswitch_31
    const/high16 v63, 0x3f80

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 756
    :pswitch_32
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 760
    :pswitch_33
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    .line 761
    goto/16 :goto_3

    .line 764
    :pswitch_34
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 765
    goto/16 :goto_3

    .line 768
    :pswitch_35
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 769
    goto/16 :goto_3

    .line 772
    :pswitch_36
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v45

    .line 773
    goto/16 :goto_3

    .line 776
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v63

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 780
    :pswitch_38
    move/from16 v0, v53

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v53

    .line 781
    goto/16 :goto_3

    .line 784
    :pswitch_39
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v52

    .line 785
    goto/16 :goto_3

    .line 788
    :pswitch_3a
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v54

    .line 789
    goto/16 :goto_3

    .line 792
    :pswitch_3b
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    .line 793
    goto/16 :goto_3

    .line 796
    :pswitch_3c
    move/from16 v0, v56

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v56

    .line 797
    goto/16 :goto_3

    .line 800
    :pswitch_3d
    move/from16 v0, v59

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v59

    .line 801
    goto/16 :goto_3

    .line 804
    :pswitch_3e
    move/from16 v0, v50

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 805
    goto/16 :goto_3

    .line 808
    :pswitch_3f
    move/from16 v0, v42

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    .line 809
    goto/16 :goto_3

    .line 812
    :pswitch_40
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v63, v0

    move/from16 v0, v63

    float-to-int v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 816
    :pswitch_41
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v63, v0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 820
    :pswitch_42
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v63, v0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 821
    goto/16 :goto_3

    .line 824
    :pswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v63, v0

    if-nez v63, :cond_4

    .line 825
    new-instance v63, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v63 .. v63}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 827
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v64, v0

    move/from16 v0, v64

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v64

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 832
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v63, v0

    if-nez v63, :cond_5

    .line 833
    new-instance v63, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v63 .. v63}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 835
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v63, v0

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 839
    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v63, v0

    if-nez v63, :cond_6

    .line 840
    new-instance v63, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v63 .. v63}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 842
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v64, v0

    move/from16 v0, v64

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v64

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 847
    :pswitch_46
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 852
    :pswitch_47
    const/16 v63, 0x0

    :try_start_0
    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v63

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 853
    :catch_0
    move-exception v28

    .line 854
    .local v28, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v63, "TextView"

    const-string v64, "Failure reading input extras"

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 855
    .end local v28           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v28

    .line 856
    .local v28, e:Ljava/io/IOException;
    const-string v63, "TextView"

    const-string v64, "Failure reading input extras"

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 861
    .end local v28           #e:Ljava/io/IOException;
    :pswitch_48
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    .line 866
    :pswitch_49
    const v63, #drawable@yi_text_select_handle_left#t

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 871
    :pswitch_4a
    const v63, #drawable@yi_text_select_handle_right#t

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 876
    :pswitch_4b
    const v63, #drawable@yi_text_select_handle_middle#t

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 880
    :pswitch_4c
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    .line 884
    :pswitch_4d
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    goto/16 :goto_3

    .line 888
    :pswitch_4e
    const/16 v63, 0x0

    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_3

    .line 892
    .end local v9           #attr:I
    :cond_7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 894
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 896
    .local v12, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xfff

    move/from16 v60, v0

    .line 898
    .local v60, variation:I
    const/16 v63, 0x81

    move/from16 v0, v60

    move/from16 v1, v63

    if-ne v0, v1, :cond_14

    const/16 v43, 0x1

    .line 900
    .local v43, passwordInputType:Z
    :goto_4
    const/16 v63, 0xe1

    move/from16 v0, v60

    move/from16 v1, v63

    if-ne v0, v1, :cond_15

    const/16 v62, 0x1

    .line 902
    .local v62, webPasswordInputType:Z
    :goto_5
    const/16 v63, 0x12

    move/from16 v0, v60

    move/from16 v1, v63

    if-ne v0, v1, :cond_16

    const/16 v40, 0x1

    .line 905
    .local v40, numberPasswordInputType:Z
    :goto_6
    if-eqz v35, :cond_18

    .line 909
    :try_start_1
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    .line 915
    .local v14, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/text/method/KeyListener;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 922
    if-eqz v36, :cond_17

    move/from16 v63, v36

    :goto_7
    :try_start_3
    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1012
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0xf

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_27

    .line 1013
    if-nez v42, :cond_8

    if-eqz v43, :cond_9

    .line 1014
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v63, v0

    move/from16 v0, v63

    and-int/lit16 v0, v0, -0xff1

    move/from16 v63, v0

    move/from16 v0, v63

    or-int/lit16 v0, v0, 0x80

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1017
    :cond_9
    if-eqz v62, :cond_a

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v63, v0

    move/from16 v0, v63

    and-int/lit16 v0, v0, -0xff1

    move/from16 v63, v0

    move/from16 v0, v63

    or-int/lit16 v0, v0, 0xe0

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 1028
    :cond_a
    :goto_9
    if-eqz v47, :cond_b

    .line 1029
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 1031
    sget-object v63, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v63

    if-ne v12, v0, :cond_b

    .line 1032
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1035
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1038
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1042
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1043
    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v49

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1045
    if-eqz v49, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v63, v0

    if-nez v63, :cond_c

    if-gez v30, :cond_c

    .line 1046
    const/16 v30, 0x3

    .line 1049
    :cond_c
    packed-switch v30, :pswitch_data_2

    .line 1071
    :goto_a
    if-eqz v52, :cond_29

    .end local v52           #textColor:Landroid/content/res/ColorStateList;
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1072
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1073
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1074
    if-eqz v53, :cond_d

    .line 1075
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1077
    :cond_d
    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v63, v0

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1079
    if-eqz v6, :cond_e

    .line 1080
    new-instance v63, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-direct/range {v63 .. v64}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1083
    :cond_e
    if-nez v42, :cond_f

    if-nez v43, :cond_f

    if-nez v62, :cond_f

    if-eqz v40, :cond_2a

    .line 1084
    :cond_f
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1085
    const/16 v59, 0x3

    .line 1091
    :cond_10
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1093
    if-eqz v48, :cond_11

    .line 1094
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1097
    :cond_11
    if-ltz v38, :cond_2b

    .line 1098
    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    new-instance v65, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v65

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v65, v63, v64

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1103
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1104
    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_12
    sget-object v63, Lcom/android/internal/R$styleable;->View:[I

    const/16 v64, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v63

    move/from16 v3, p3

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v63, v0

    if-nez v63, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2c

    :cond_13
    const/16 v32, 0x1

    .line 1116
    .local v32, focusable:Z
    :goto_e
    move/from16 v16, v32

    .line 1117
    .local v16, clickable:Z
    move/from16 v37, v32

    .line 1119
    .local v37, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v39

    .line 1120
    const/16 v34, 0x0

    :goto_f
    move/from16 v0, v34

    move/from16 v1, v39

    if-ge v0, v1, :cond_2d

    .line 1121
    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 1123
    .restart local v9       #attr:I
    sparse-switch v9, :sswitch_data_0

    .line 1120
    :goto_10
    add-int/lit8 v34, v34, 0x1

    goto :goto_f

    .line 898
    .end local v9           #attr:I
    .end local v16           #clickable:Z
    .end local v32           #focusable:Z
    .end local v37           #longClickable:Z
    .end local v40           #numberPasswordInputType:Z
    .end local v43           #passwordInputType:Z
    .end local v62           #webPasswordInputType:Z
    .restart local v52       #textColor:Landroid/content/res/ColorStateList;
    :cond_14
    const/16 v43, 0x0

    goto/16 :goto_4

    .line 900
    .restart local v43       #passwordInputType:Z
    :cond_15
    const/16 v62, 0x0

    goto/16 :goto_5

    .line 902
    .restart local v62       #webPasswordInputType:Z
    :cond_16
    const/16 v40, 0x0

    goto/16 :goto_6

    .line 910
    .restart local v40       #numberPasswordInputType:Z
    :catch_2
    move-exception v31

    .line 911
    .local v31, ex:Ljava/lang/ClassNotFoundException;
    new-instance v63, Ljava/lang/RuntimeException;

    move-object/from16 v0, v63

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v63

    .line 916
    .end local v31           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v14       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_3
    move-exception v31

    .line 917
    .local v31, ex:Ljava/lang/InstantiationException;
    new-instance v63, Ljava/lang/RuntimeException;

    move-object/from16 v0, v63

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v63

    .line 918
    .end local v31           #ex:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v31

    .line 919
    .local v31, ex:Ljava/lang/IllegalAccessException;
    new-instance v63, Ljava/lang/RuntimeException;

    move-object/from16 v0, v63

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v63

    .line 922
    .end local v31           #ex:Ljava/lang/IllegalAccessException;
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v63, v0

    invoke-interface/range {v63 .. v63}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v63

    goto/16 :goto_7

    .line 925
    :catch_5
    move-exception v28

    .line 926
    .local v28, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_8

    .line 928
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v28           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_18
    if-eqz v18, :cond_1a

    .line 929
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 933
    if-eqz v36, :cond_19

    move/from16 v63, v36

    :goto_11
    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_8

    :cond_19
    const/16 v63, 0x1

    goto :goto_11

    .line 935
    :cond_1a
    if-eqz v36, :cond_1c

    .line 936
    const/16 v63, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v63

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 938
    invoke-static/range {v36 .. v36}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v63

    if-nez v63, :cond_1b

    const/16 v49, 0x1

    :goto_12
    goto/16 :goto_8

    :cond_1b
    const/16 v49, 0x0

    goto :goto_12

    .line 939
    :cond_1c
    if-eqz v44, :cond_1d

    .line 940
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 941
    const/16 v36, 0x3

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_8

    .line 942
    :cond_1d
    if-eqz v41, :cond_22

    .line 943
    and-int/lit8 v63, v41, 0x2

    if-eqz v63, :cond_20

    const/16 v63, 0x1

    move/from16 v64, v63

    :goto_13
    and-int/lit8 v63, v41, 0x4

    if-eqz v63, :cond_21

    const/16 v63, 0x1

    :goto_14
    move/from16 v0, v64

    move/from16 v1, v63

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 945
    const/16 v36, 0x2

    .line 946
    and-int/lit8 v63, v41, 0x2

    if-eqz v63, :cond_1e

    .line 947
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x1000

    move/from16 v36, v0

    .line 949
    :cond_1e
    and-int/lit8 v63, v41, 0x4

    if-eqz v63, :cond_1f

    .line 950
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x2000

    move/from16 v36, v0

    .line 952
    :cond_1f
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_8

    .line 943
    :cond_20
    const/16 v63, 0x0

    move/from16 v64, v63

    goto :goto_13

    :cond_21
    const/16 v63, 0x0

    goto :goto_14

    .line 953
    :cond_22
    if-nez v11, :cond_23

    const/16 v63, -0x1

    move/from16 v0, v63

    if-eq v10, v0, :cond_24

    .line 956
    :cond_23
    const/16 v36, 0x1

    .line 958
    packed-switch v10, :pswitch_data_3

    .line 975
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 979
    .local v15, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_15
    invoke-static {v11, v15}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 980
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_8

    .line 960
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_4f
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 961
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x4000

    move/from16 v36, v0

    .line 962
    goto :goto_15

    .line 965
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_50
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 966
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x2000

    move/from16 v36, v0

    .line 967
    goto :goto_15

    .line 970
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_51
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 971
    .restart local v15       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x1000

    move/from16 v36, v0

    .line 972
    goto :goto_15

    .line 981
    .end local v15           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v63, v0

    if-eqz v63, :cond_25

    .line 983
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 984
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 985
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 987
    const/16 v63, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 989
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    .line 990
    :cond_25
    if-eqz v29, :cond_26

    .line 991
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 992
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_8

    .line 994
    :cond_26
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 996
    packed-switch v13, :pswitch_data_4

    goto/16 :goto_8

    .line 998
    :pswitch_52
    sget-object v12, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 999
    goto/16 :goto_8

    .line 1001
    :pswitch_53
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1002
    goto/16 :goto_8

    .line 1004
    :pswitch_54
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1021
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0xf

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_a

    .line 1022
    if-eqz v40, :cond_a

    .line 1023
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v63, v0

    move/from16 v0, v63

    and-int/lit16 v0, v0, -0xff1

    move/from16 v63, v0

    or-int/lit8 v63, v63, 0x10

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_9

    .line 1051
    :pswitch_55
    sget-object v63, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a

    .line 1054
    :pswitch_56
    sget-object v63, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a

    .line 1057
    :pswitch_57
    sget-object v63, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a

    .line 1060
    :pswitch_58
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v63

    if-eqz v63, :cond_28

    .line 1061
    const/16 v63, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1062
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1067
    :goto_16
    sget-object v63, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a

    .line 1064
    :cond_28
    const/16 v63, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1065
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_16

    .line 1071
    :cond_29
    const/high16 v63, -0x100

    invoke-static/range {v63 .. v63}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v52

    goto/16 :goto_b

    .line 1086
    .end local v52           #textColor:Landroid/content/res/ColorStateList;
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v63, v0

    move/from16 v0, v63

    and-int/lit16 v0, v0, 0xfff

    move/from16 v63, v0

    const/16 v64, 0x81

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_10

    .line 1088
    const/16 v59, 0x3

    goto/16 :goto_c

    .line 1100
    :cond_2b
    sget-object v63, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_d

    .line 1115
    :cond_2c
    const/16 v32, 0x0

    goto/16 :goto_e

    .line 1125
    .restart local v9       #attr:I
    .restart local v16       #clickable:Z
    .restart local v32       #focusable:Z
    .restart local v37       #longClickable:Z
    :sswitch_0
    move/from16 v0, v32

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 1126
    goto/16 :goto_10

    .line 1129
    :sswitch_1
    move/from16 v0, v16

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 1130
    goto/16 :goto_10

    .line 1133
    :sswitch_2
    move/from16 v0, v37

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v37

    goto/16 :goto_10

    .line 1137
    .end local v9           #attr:I
    :cond_2d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1139
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1140
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1141
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1143
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1145
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v61

    .line 1146
    .local v61, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual/range {v61 .. v61}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v58

    .line 1147
    .local v58, touchSlop:I
    mul-int v63, v58, v58

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    .line 1148
    return-void

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 578
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_37
        :pswitch_8
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_39
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_2c
        :pswitch_27
        :pswitch_12
        :pswitch_13
        :pswitch_22
        :pswitch_1c
        :pswitch_26
        :pswitch_20
        :pswitch_10
        :pswitch_29
        :pswitch_28
        :pswitch_31
        :pswitch_2f
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_2a
        :pswitch_3f
        :pswitch_2b
        :pswitch_11
        :pswitch_2e
        :pswitch_30
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_f
        :pswitch_e
        :pswitch_9
        :pswitch_32
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_16
        :pswitch_1a
        :pswitch_40
        :pswitch_41
        :pswitch_2d
        :pswitch_42
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_8
        :pswitch_8
        :pswitch_4d
        :pswitch_8
        :pswitch_8
        :pswitch_48
        :pswitch_4c
        :pswitch_4e
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 1049
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
    .end packed-switch

    .line 1123
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    .line 958
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch

    .line 996
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_52
        :pswitch_53
        :pswitch_54
    .end packed-switch
.end method

.method static synthetic access$10000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$1600(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPathBaidu()V

    return-void
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/TextView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/TextView;Landroid/text/style/SuggestionRangeSpan;)Landroid/text/style/SuggestionRangeSpan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/TextView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$4700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->canPasteBaidu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/widget/TextView;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$5302(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$5402(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-boolean p1, p0, Landroid/widget/TextView;->mInMoreMenuPressed:Z

    return p1
.end method

.method static synthetic access$5500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    return-void
.end method

.method static synthetic access$5900(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mSearchText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$5902(Landroid/widget/TextView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/TextView;->mSearchText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/TextView;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/widget/TextView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method static synthetic access$6400(Landroid/widget/TextView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/TextView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7100(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    return-void
.end method

.method static synthetic access$7400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7500()J
    .locals 2

    .prologue
    .line 238
    sget-wide v0, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    return-wide v0
.end method

.method static synthetic access$7600(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    return v0
.end method

.method static synthetic access$7700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    return-object p1
.end method

.method static synthetic access$8100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    return v0
.end method

.method static synthetic access$8500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mLeft:I

    return v0
.end method

.method static synthetic access$8600(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    return v0
.end method

.method static synthetic access$8700(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mLeft:I

    return v0
.end method

.method static synthetic access$8800(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8802(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$8900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$9100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9102(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$9200(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    return v0
.end method

.method static synthetic access$9300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9400(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9402(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$9500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    return v0
.end method

.method static synthetic access$9600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9700(Landroid/widget/TextView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9902(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    iput-boolean p1, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    return p1
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .parameter "singleLine"
    .parameter "applyTransformation"
    .parameter "changeMaxLines"

    .prologue
    const/4 v0, 0x1

    .line 7322
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 7323
    if-eqz p1, :cond_1

    .line 7324
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 7325
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7326
    if-eqz p2, :cond_0

    .line 7327
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7338
    :cond_0
    :goto_0
    return-void

    .line 7330
    :cond_1
    if-eqz p3, :cond_2

    .line 7331
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7333
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7334
    if-eqz p2, :cond_0

    .line 7335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 6181
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 6183
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 6184
    const/4 v1, 0x0

    .line 6187
    :cond_0
    move v2, v1

    .line 6189
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 6190
    const/high16 v1, 0x10

    .line 6193
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6195
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    .prologue
    const/16 v13, 0x50

    const/4 v10, 0x1

    .line 6868
    const/4 v5, 0x0

    .line 6869
    .local v5, line:I
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v13, :cond_0

    .line 6870
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .line 6873
    :cond_0
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 6874
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 6875
    .local v1, dir:I
    iget v11, p0, Landroid/widget/TextView;->mRight:I

    iget v12, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v2, v11, v12

    .line 6876
    .local v2, hspace:I
    iget v11, p0, Landroid/widget/TextView;->mBottom:I

    iget v12, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v12

    sub-int v9, v11, v12

    .line 6877
    .local v9, vspace:I
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 6882
    .local v3, ht:I
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_4

    .line 6883
    if-ne v1, v10, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6890
    :cond_1
    :goto_0
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_8

    .line 6896
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v4, v11

    .line 6897
    .local v4, left:I
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    .line 6899
    .local v6, right:I
    sub-int v11, v6, v4

    if-ge v11, v2, :cond_6

    .line 6900
    add-int v11, v6, v4

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v2, 0x2

    sub-int v7, v11, v12

    .line 6915
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_1
    if-ge v3, v9, :cond_a

    .line 6916
    const/4 v8, 0x0

    .line 6925
    .local v8, scrolly:I
    :goto_2
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v7, v11, :cond_2

    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v8, v11, :cond_c

    .line 6926
    :cond_2
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    .line 6929
    :goto_3
    return v10

    .line 6883
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 6885
    :cond_4
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_1

    .line 6886
    if-ne v1, v10, :cond_5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_4
    goto :goto_0

    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_4

    .line 6902
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_6
    if-gez v1, :cond_7

    .line 6903
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_1

    .line 6905
    .end local v7           #scrollx:I
    :cond_7
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_1

    .line 6908
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_8
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_9

    .line 6909
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    .line 6910
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 6911
    .restart local v7       #scrollx:I
    goto :goto_1

    .line 6912
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_9
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v7, v11

    .restart local v7       #scrollx:I
    goto :goto_1

    .line 6918
    :cond_a
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v13, :cond_b

    .line 6919
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_2

    .line 6921
    .end local v8           #scrolly:I
    :cond_b
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_2

    .line 6929
    :cond_c
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private canCopy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8914
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8922
    :cond_0
    :goto_0
    return v0

    .line 8918
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8919
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canCut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8902
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8910
    :cond_0
    :goto_0
    return v0

    .line 8906
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 8907
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7424
    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 7425
    .local v0, width:I
    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 8926
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canPasteBaidu()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 8936
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Editable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "clipboard"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 8942
    .local v3, result:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 8944
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 8945
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 8946
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v4, v6, :cond_0

    move v3, v5

    .line 8953
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #result:Z
    :cond_0
    return v3

    :cond_1
    move v3, v5

    .line 8936
    goto :goto_0

    .line 8949
    .restart local v3       #result:Z
    :catch_0
    move-exception v0

    .line 8950
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 8884
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 6815
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 6821
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 6822
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 6823
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .line 6830
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6834
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 6836
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 6838
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6862
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_1
    return-void

    .line 6823
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    .line 6844
    .restart local v2       #hintWant:I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 6846
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 6853
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6854
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 6858
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6859
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6860
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 6774
    const/4 v1, 0x0

    .line 6776
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 6778
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 6779
    const/4 v1, 0x1

    .line 6780
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6784
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 6785
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 6787
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 6788
    const/4 v1, 0x1

    .line 6801
    .end local v0           #desiredHeight:I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 6802
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6805
    :cond_2
    return-void

    .line 6790
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 6791
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    .line 6792
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 6794
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    .line 6795
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 4136
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 4137
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 4139
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #dimen@textview_error_popup_default_width#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4141
    .local v3, defaultWidthInPixels:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 4143
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 4144
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 4145
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 4144
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4152
    :cond_0
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4153
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4154
    return-void
.end method

.method private compressText(F)Z
    .locals 7
    .parameter "width"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f80

    .line 6471
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6489
    :cond_0
    :goto_0
    return v2

    .line 6474
    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 6476
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 6477
    .local v1, textWidth:F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .line 6478
    .local v0, overflow:F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    .line 6479
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 6480
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 6485
    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 7189
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 7190
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 7191
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 7193
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 7194
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 7195
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 7196
    return-void
.end method

.method private convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .parameter "x"

    .prologue
    .line 12088
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 12090
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 12091
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 12092
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 12093
    return p1
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .parameter "layout"

    .prologue
    .line 6493
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 6494
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 6495
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 6500
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 6501
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 6502
    const/4 v4, -0x1

    .line 6509
    :goto_1
    return v4

    .line 6500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6505
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 6506
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 6505
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6509
    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 7
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5447
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 5562
    :goto_0
    return v2

    .line 5451
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5508
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_8

    .line 5509
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 5511
    const/4 v0, 0x1

    .line 5512
    .local v0, doDown:Z
    if-eqz p3, :cond_7

    .line 5514
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 5515
    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 5516
    .local v1, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5517
    const/4 v0, 0x0

    .line 5518
    if-eqz v1, :cond_6

    .line 5525
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    goto :goto_0

    .line 5453
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5458
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_2

    .line 5461
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5464
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v5, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    .line 5466
    goto :goto_0

    .line 5473
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5475
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 5476
    goto :goto_0

    :cond_4
    move v2, v4

    .line 5478
    goto :goto_0

    .line 5484
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5485
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 5486
    goto :goto_0

    .line 5492
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5493
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 5494
    goto :goto_0

    .line 5501
    :sswitch_3
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 5502
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v2, v4

    .line 5503
    goto/16 :goto_0

    .line 5525
    .restart local v0       #doDown:Z
    .restart local v1       #handled:Z
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 5529
    .end local v1           #handled:Z
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 5530
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 5531
    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 5532
    .restart local v1       #handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 5533
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 5534
    if-eqz v1, :cond_8

    move v2, v5

    goto/16 :goto_0

    .line 5521
    .end local v1           #handled:Z
    :catch_0
    move-exception v2

    .line 5525
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 5541
    .end local v0           #doDown:Z
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_a

    .line 5542
    const/4 v0, 0x1

    .line 5543
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_9

    .line 5545
    :try_start_1
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v5, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 5547
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 5548
    if-eqz v1, :cond_9

    move v2, v4

    .line 5549
    goto/16 :goto_0

    .line 5551
    .end local v1           #handled:Z
    :catch_1
    move-exception v2

    .line 5556
    :cond_9
    if-eqz v0, :cond_a

    .line 5557
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5558
    const/4 v2, 0x2

    goto/16 :goto_0

    .end local v0           #doDown:Z
    :cond_a
    move v2, v3

    .line 5562
    goto/16 :goto_0

    .line 5451
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 7

    .prologue
    .line 8524
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    .line 8525
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 8526
    .local v2, spannable:Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 8528
    .local v3, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 8529
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 8530
    .local v0, flags:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    .line 8532
    and-int/lit8 v0, v0, -0x2

    .line 8533
    aget-object v4, v3, v1

    invoke-virtual {v4, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 8528
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8537
    .end local v0           #flags:I
    .end local v1           #i:I
    .end local v2           #spannable:Landroid/text/Spannable;
    .end local v3           #suggestionSpans:[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v3, 0x0

    .line 5181
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 5182
    .local v1, translate:Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5183
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 5184
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5181
    .end local v0           #i:I
    .end local v1           #translate:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5186
    .restart local v0       #i:I
    .restart local v1       #translate:Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5187
    :cond_3
    return-void
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 8964
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 8960
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 10393
    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    .line 10394
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10395
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 10397
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1414
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 1415
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1416
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1417
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1423
    :goto_0
    return-void

    .line 1419
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1420
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1421
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 4256
    const/4 v4, 0x0

    .line 4257
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 4259
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4260
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 4261
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 4264
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 4267
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 4268
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4274
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 4276
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 4277
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 4278
    sub-int v4, v0, v3

    .line 4283
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 4271
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 4280
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getCharRange(I)J
    .locals 7
    .parameter "offset"

    .prologue
    .line 9157
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 9158
    .local v4, textLength:I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 9159
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9160
    .local v0, currentChar:C
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9161
    .local v1, nextChar:C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9162
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    .line 9178
    .end local v0           #currentChar:C
    .end local v1           #nextChar:C
    :goto_0
    return-wide v5

    .line 9165
    :cond_0
    if-ge p1, v4, :cond_1

    .line 9166
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 9168
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 9169
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 9170
    .local v2, previousChar:C
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 9171
    .local v3, previousPreviousChar:C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9172
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 9175
    .end local v2           #previousChar:C
    .end local v3           #previousPreviousChar:C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 9176
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 9178
    :cond_3
    invoke-static {p1, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 6711
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v6, 0x1

    .line 6717
    if-nez p1, :cond_0

    .line 6718
    const/4 v0, 0x0

    .line 6766
    :goto_0
    return v0

    .line 6721
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 6722
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 6723
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 6725
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 6726
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 6727
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6728
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6731
    :cond_1
    add-int/2addr v0, v3

    .line 6733
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 6738
    if-eqz p2, :cond_3

    .line 6739
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 6740
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 6742
    if-eqz v1, :cond_2

    .line 6743
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6744
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6747
    :cond_2
    add-int/2addr v0, v3

    .line 6748
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 6755
    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 6756
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 6757
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 6764
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6766
    goto :goto_0

    .line 6752
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 6760
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getErrorX()I
    .locals 5

    .prologue
    .line 4093
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4095
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4096
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 4109
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 4110
    .local v0, compoundPaddingTop:I
    iget v5, p0, Landroid/widget/TextView;->mBottom:I

    iget v7, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v4, v5, v0

    .line 4112
    .local v4, vspace:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4113
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    .line 4120
    .local v2, icontop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 4121
    .local v3, scale:F
    if-eqz v1, :cond_0

    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_0
    add-int v5, v2, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    .end local v2           #icontop:I
    .end local v3           #scale:F
    :cond_1
    move v5, v6

    .line 4113
    goto :goto_0
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "r"
    .parameter "line"

    .prologue
    .line 7179
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 7184
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 7185
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7186
    :cond_1
    return-void
.end method

.method private getLastTapPosition()I
    .locals 4

    .prologue
    .line 8314
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 8315
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 8316
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 8318
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 8319
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8321
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 8327
    .end local v0           #lastTapPosition:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    .prologue
    .line 9182
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 9183
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 9184
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 9185
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 6209
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_0

    .line 6211
    iget-object v1, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    .line 6212
    .local v1, textAlign:Landroid/widget/TextView$TextAlign;
    sget-object v2, Landroid/widget/TextView$3;->$SwitchMap$android$widget$TextView$TextAlign:[I

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 6256
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6259
    .local v0, alignment:Landroid/text/Layout$Alignment;
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 6261
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    .end local v1           #textAlign:Landroid/widget/TextView$TextAlign;
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object v2

    .line 6217
    .restart local v1       #textAlign:Landroid/widget/TextView$TextAlign;
    :pswitch_0
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    const v3, 0x800007

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 6234
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6235
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6219
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6220
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6222
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6223
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6225
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6226
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6228
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6229
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6231
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6232
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6239
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6240
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6242
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6243
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6245
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6246
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6248
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6250
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    :goto_1
    goto :goto_0

    .line 6248
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 6252
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6254
    .restart local v0       #alignment:Landroid/text/Layout$Alignment;
    :goto_2
    goto :goto_0

    .line 6252
    .end local v0           #alignment:Landroid/text/Layout$Alignment;
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 6212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6217
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLineAtCoordinate(F)I
    .locals 2
    .parameter "y"

    .prologue
    .line 12097
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 12099
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 12100
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 12101
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 12102
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getOffsetAtCoordinate(IF)I
    .locals 1
    .parameter "line"
    .parameter "x"

    .prologue
    .line 12106
    invoke-direct {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 12107
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getPositionListener()Landroid/widget/TextView$PositionListener;
    .locals 2

    .prologue
    .line 9503
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-nez v0, :cond_0

    .line 9504
    new-instance v0, Landroid/widget/TextView$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView$PositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    .line 9506
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    return-object v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 10446
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10447
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, #attr@actionModeWebSearchDrawable#t

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10449
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 8839
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 8841
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 8844
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 8811
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 8814
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_0

    .line 8815
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 8817
    .local v0, ap:I
    if-eq v0, v4, :cond_0

    .line 8819
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8821
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 8823
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8827
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_0
    return-object v2
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 9244
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9245
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9246
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9248
    :cond_0
    return-object v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 9387
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v3, #layout@text_drag_thumbnail#t

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/TextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9390
    .local v0, shadowView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 9391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9394
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 9395
    sget v2, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 9397
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9398
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9400
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9401
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 9403
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9406
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9407
    .local v1, size:I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 9409
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 9410
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 9411
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 9332
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 4225
    const/4 v4, 0x0

    .line 4226
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 4228
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4229
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 4230
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 4233
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 4236
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 4237
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4243
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 4245
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 4246
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 4247
    sub-int v4, v0, v3

    .line 4252
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 4240
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 4249
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 3612
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideControllers()V
    .locals 0

    .prologue
    .line 12052
    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 12053
    invoke-direct {p0}, Landroid/widget/TextView;->hideSpanControllers()V

    .line 12054
    return-void
.end method

.method private hideControllersBaidu()V
    .locals 1

    .prologue
    .line 8360
    iget-boolean v0, p0, Landroid/widget/TextView;->mInMoreMenuPressed:Z

    if-nez v0, :cond_0

    .line 8361
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8362
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    .line 8363
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 8366
    :cond_0
    return-void
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 12063
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12065
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    .line 12067
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 12068
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 12069
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 4126
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 4127
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4128
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 4132
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4133
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 12043
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 12044
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 12046
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 12057
    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-eqz v0, :cond_0

    .line 12058
    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    #calls: Landroid/widget/TextView$ChangeWatcher;->hideControllers()V
    invoke-static {v0}, Landroid/widget/TextView$ChangeWatcher;->access$10100(Landroid/widget/TextView$ChangeWatcher;)V

    .line 12060
    :cond_0
    return-void
.end method

.method private invalidateCursor()V
    .locals 1

    .prologue
    .line 4379
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4381
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 4382
    return-void
.end method

.method private invalidateCursor(III)V
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 4385
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 4386
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4387
    .local v1, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4388
    .local v0, end:I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 4390
    .end local v0           #end:I
    .end local v1           #start:I
    :cond_1
    return-void
.end method

.method private invalidateCursorPath()V
    .locals 11

    .prologue
    .line 4287
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    .line 4288
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 4326
    :cond_0
    :goto_0
    return-void

    .line 4290
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4291
    .local v1, horizontalPadding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 4293
    .local v4, verticalPadding:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-nez v5, :cond_3

    .line 4294
    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v6

    .line 4304
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 4305
    .local v3, thick:F
    const/high16 v5, 0x3f80

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 4306
    const/high16 v3, 0x3f80

    .line 4309
    :cond_2
    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    .line 4311
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4313
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4317
    monitor-exit v6

    goto :goto_0

    .end local v3           #thick:F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4319
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v2, v5, :cond_0

    .line 4320
    iget-object v5, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4321
    .local v0, bounds:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4319
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private invalidateCursorPathBaidu()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f80

    .line 4329
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    .line 4330
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 4376
    :cond_0
    :goto_0
    return-void

    .line 4332
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4333
    .local v1, horizontalPadding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    invoke-direct {p0, v9}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 4335
    .local v4, verticalPadding:I
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4337
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-nez v5, :cond_3

    .line 4338
    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v6

    .line 4348
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 4349
    .local v3, thick:F
    cmpg-float v5, v3, v8

    if-gez v5, :cond_2

    .line 4350
    const/high16 v3, 0x3f80

    .line 4353
    :cond_2
    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    .line 4357
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4361
    monitor-exit v6

    goto :goto_0

    .end local v3           #thick:F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4362
    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v9, :cond_5

    iget v5, p0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Landroid/widget/TextView;->mSpacingAdd:F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_5

    .line 4363
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/TextView;->mCursorCount:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4364
    .local v0, bounds:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->floor(F)F

    move-result v6

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 4369
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v2, v5, :cond_0

    .line 4370
    iget-object v5, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4371
    .restart local v0       #bounds:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4369
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 8508
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    .line 8509
    .local v1, spannable:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 8511
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 8512
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 8513
    const/4 v3, 0x1

    .line 8516
    :goto_1
    return v3

    .line 8511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8516
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 8496
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-nez v1, :cond_0

    .line 8500
    :goto_0
    return v2

    .line 8498
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 8500
    .local v0, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isCursorVisible()Z
    .locals 1

    .prologue
    .line 7420
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 3536
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    .line 9645
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 9646
    .local v0, line:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 9647
    .local v1, lineBottom:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v2, v3

    .line 9648
    .local v2, primaryHorizontal:I
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v3

    return v3
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 3616
    and-int/lit16 v0, p0, 0xfff

    .line 3618
    .local v0, variation:I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 12114
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12121
    :cond_0
    :goto_0
    return v1

    .line 12116
    :cond_1
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 12117
    .local v0, line:I
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 12119
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 12120
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 12121
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9605
    sget-object v6, Landroid/widget/TextView;->sTmpPosition:[F

    monitor-enter v6

    .line 9606
    :try_start_0
    sget-object v2, Landroid/widget/TextView;->sTmpPosition:[F

    .line 9607
    .local v2, position:[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 9608
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 9609
    move-object v3, p0

    .line 9611
    .local v3, view:Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 9612
    if-eq v3, p0, :cond_0

    .line 9614
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 9615
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 9618
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 9620
    :cond_1
    monitor-exit v6

    .line 9641
    :goto_1
    return v4

    .line 9623
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 9624
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 9627
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 9628
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 9630
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 9631
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 9632
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 9635
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 9638
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 9641
    goto :goto_1

    .line 9638
    .end local v2           #position:[F
    .end local v3           #view:Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isTextEditable()Z
    .locals 1

    .prologue
    .line 8591
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 3627
    and-int/lit16 v0, p0, 0xfff

    .line 3629
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeBlink()V
    .locals 6

    .prologue
    .line 8691
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8692
    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 8694
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 8695
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8696
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 8701
    :cond_1
    :goto_0
    return-void

    .line 8699
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 15
    .parameter "wantWidth"
    .parameter "boring"
    .parameter "ellipsisWidth"
    .parameter "alignment"
    .parameter "shouldEllipsize"
    .parameter "effectiveEllipsize"
    .parameter "useSaved"

    .prologue
    .line 6402
    const/4 v1, 0x0

    .line 6403
    .local v1, result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    .line 6404
    new-instance v1, Landroid/text/DynamicLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v5, :cond_1

    move-object/from16 v11, p6

    :goto_0
    move/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 6467
    .restart local v1       #result:Landroid/text/Layout;
    :cond_0
    :goto_1
    return-object v1

    .line 6404
    .end local v1           #result:Landroid/text/Layout;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 6409
    .restart local v1       #result:Landroid/text/Layout;
    :cond_2
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 6410
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 6411
    if-eqz p2, :cond_3

    .line 6412
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6416
    :cond_3
    if-eqz p2, :cond_b

    .line 6417
    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_6

    if-eqz p6, :cond_4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_6

    .line 6419
    :cond_4
    if-eqz p7, :cond_5

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_5

    .line 6420
    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    .line 6429
    :goto_2
    if-eqz p7, :cond_0

    move-object v2, v1

    .line 6430
    check-cast v2, Landroid/text/BoringLayout;

    iput-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto :goto_1

    .line 6424
    :cond_5
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    goto :goto_2

    .line 6432
    :cond_6
    if-eqz p5, :cond_8

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_8

    .line 6433
    if-eqz p7, :cond_7

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_7

    .line 6434
    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move/from16 v12, p3

    invoke-virtual/range {v2 .. v12}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_1

    .line 6439
    :cond_7
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move/from16 v11, p3

    invoke-static/range {v2 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_1

    .line 6444
    :cond_8
    if-eqz p5, :cond_a

    .line 6445
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_3
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1

    .end local v1           #result:Landroid/text/Layout;
    :cond_9
    const v14, 0x7fffffff

    goto :goto_3

    .line 6451
    .restart local v1       #result:Landroid/text/Layout;
    :cond_a
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1

    .line 6455
    :cond_b
    if-eqz p5, :cond_d

    .line 6456
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_4
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1

    .end local v1           #result:Landroid/text/Layout;
    :cond_c
    const v14, 0x7fffffff

    goto :goto_4

    .line 6462
    .restart local v1       #result:Landroid/text/Layout;
    :cond_d
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #result:Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v1       #result:Landroid/text/Layout;
    goto/16 :goto_1
.end method

.method private nullLayouts()V
    .locals 1

    .prologue
    .line 6163
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 6164
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 6166
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 6167
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6170
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6173
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6174
    return-void
.end method

.method private onDrop(Landroid/view/DragEvent;)V
    .locals 23
    .parameter "event"

    .prologue
    .line 12151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12152
    .local v4, content:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 12153
    .local v3, clipData:Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 12154
    .local v11, itemCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 12155
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 12156
    .local v10, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 12154
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 12159
    .end local v10           #item:Landroid/content/ClipData$Item;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    .line 12161
    .local v17, offset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 12162
    .local v12, localState:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 12163
    .local v6, dragLocalState:Landroid/widget/TextView$DragLocalState;
    instance-of v0, v12, Landroid/widget/TextView$DragLocalState;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object v6, v12

    .line 12164
    check-cast v6, Landroid/widget/TextView$DragLocalState;

    .line 12166
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/widget/TextView$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 12169
    .local v5, dragDropIntoItself:Z
    :goto_1
    if-eqz v5, :cond_4

    .line 12170
    iget v0, v6, Landroid/widget/TextView$DragLocalState;->start:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/TextView$DragLocalState;->end:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 12207
    :cond_2
    :goto_2
    return-void

    .line 12166
    .end local v5           #dragDropIntoItself:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 12176
    .restart local v5       #dragDropIntoItself:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v18

    .line 12177
    .local v18, originalLength:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v15

    .line 12178
    .local v15, minMax:J
    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v14

    .line 12179
    .local v14, min:I
    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v13

    .line 12181
    .local v13, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    check-cast v21, Landroid/text/Spannable;

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 12182
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 12184
    if-eqz v5, :cond_2

    .line 12185
    iget v8, v6, Landroid/widget/TextView$DragLocalState;->start:I

    .line 12186
    .local v8, dragSourceStart:I
    iget v7, v6, Landroid/widget/TextView$DragLocalState;->end:I

    .line 12187
    .local v7, dragSourceEnd:I
    if-gt v13, v8, :cond_5

    .line 12189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v20, v21, v18

    .line 12190
    .local v20, shift:I
    add-int v8, v8, v20

    .line 12191
    add-int v7, v7, v20

    .line 12195
    .end local v20           #shift:I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 12198
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-eq v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 12202
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-ne v8, v0, :cond_8

    add-int/lit8 v19, v8, -0x1

    .line 12204
    .local v19, pos:I
    :goto_3
    add-int/lit8 v21, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_2

    .end local v19           #pos:I
    :cond_8
    move/from16 v19, v8

    .line 12202
    goto :goto_3
.end method

.method private static packRangeInLong(II)J
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 8956
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private paste(II)V
    .locals 10
    .parameter "min"
    .parameter "max"

    .prologue
    .line 10411
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 10413
    .local v1, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 10414
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_3

    .line 10415
    const/4 v2, 0x0

    .line 10416
    .local v2, didFirst:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 10417
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 10418
    .local v6, paste:Ljava/lang/CharSequence;
    if-eqz v6, :cond_0

    .line 10419
    if-nez v2, :cond_1

    .line 10420
    invoke-direct {p0, p1, p2, v6}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v4

    .line 10421
    .local v4, minMax:J
    invoke-static {v4, v5}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result p1

    .line 10422
    invoke-static {v4, v5}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result p2

    .line 10423
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10424
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Editable;

    invoke-interface {v7, p1, p2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10425
    const/4 v2, 0x1

    .line 10416
    .end local v4           #minMax:J
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10427
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    const-string v9, "\n"

    invoke-interface {v7, v8, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10428
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    invoke-interface {v7, v8, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 10432
    .end local v6           #paste:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10433
    const-wide/16 v7, 0x0

    sput-wide v7, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    .line 10435
    .end local v2           #didFirst:Z
    .end local v3           #i:I
    :cond_3
    return-void
.end method

.method private prepareCursorControllers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8556
    const/4 v2, 0x0

    .line 8558
    .local v2, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8559
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 8560
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 8561
    .local v1, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_0

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_4

    :cond_0
    move v2, v4

    .line 8565
    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_5

    move v5, v4

    :goto_1
    iput-boolean v5, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 8566
    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    :goto_2
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 8569
    iget-boolean v3, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v3, :cond_2

    .line 8570
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 8571
    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v3, :cond_2

    .line 8572
    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 8573
    iput-object v7, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 8577
    :cond_2
    iget-boolean v3, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_3

    .line 8578
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 8579
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v3, :cond_3

    .line 8580
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 8581
    iput-object v7, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 8584
    :cond_3
    return-void

    .restart local v1       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move v2, v3

    .line 8561
    goto :goto_0

    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v5, v3

    .line 8565
    goto :goto_1

    :cond_6
    move v4, v3

    .line 8566
    goto :goto_2
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 7
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/16 v6, 0xa

    .line 9342
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 9343
    if-lez p1, :cond_0

    .line 9344
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9345
    .local v1, charBefore:C
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9347
    .local v0, charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9349
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9350
    .local v3, originalLength:I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9353
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 9354
    .local v2, delta:I
    add-int/2addr p1, v2

    .line 9355
    add-int/2addr p2, v2

    .line 9368
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 9369
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9370
    .restart local v1       #charBefore:C
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9372
    .restart local v0       #charAfter:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9374
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9383
    .end local v0           #charAfter:C
    .end local v1           #charBefore:C
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 9356
    .restart local v0       #charAfter:C
    .restart local v1       #charBefore:C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v0, v6, :cond_0

    .line 9359
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 9360
    .restart local v3       #originalLength:I
    const-string v4, " "

    invoke-virtual {p0, p1, p1, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 9362
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 9363
    .restart local v2       #delta:I
    add-int/2addr p1, v2

    .line 9364
    add-int/2addr p2, v2

    goto :goto_0

    .line 9375
    .end local v2           #delta:I
    .end local v3           #originalLength:I
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v6, :cond_1

    .line 9378
    const-string v4, " "

    invoke-virtual {p0, p2, p2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4452
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4454
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_1

    .line 4455
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4456
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4462
    :cond_0
    :goto_0
    return-void

    .line 4457
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4458
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_0
.end method

.method private removeIntersectingSpans(IILjava/lang/Class;)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 7696
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 7709
    :cond_0
    return-void

    .line 7697
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 7699
    .local v5, text:Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 7700
    .local v4, spans:[Ljava/lang/Object;,"[TT;"
    array-length v2, v4

    .line 7701
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 7702
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 7703
    .local v3, s:I
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 7706
    .local v0, e:I
    if-eq v0, p1, :cond_0

    if-eq v3, p2, :cond_0

    .line 7707
    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 7701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5872
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 5873
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 5874
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 5875
    add-int/lit8 v0, v0, -0x1

    .line 5876
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 5878
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 4174
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 4175
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 4176
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 4178
    :cond_0
    return-void
.end method

.method private selectAll()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8968
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 8969
    .local v0, length:I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8970
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private selectCurrentWord()Z
    .locals 15

    .prologue
    .line 8978
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v13

    if-nez v13, :cond_0

    .line 8979
    const/4 v13, 0x0

    .line 9038
    :goto_0
    return v13

    .line 8982
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 8986
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v13

    goto :goto_0

    .line 8989
    :cond_1
    iget v13, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v13, 0xf

    .line 8990
    .local v0, klass:I
    iget v13, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v11, v13, 0xff0

    .line 8993
    .local v11, variation:I
    const/4 v13, 0x2

    if-eq v0, v13, :cond_2

    const/4 v13, 0x3

    if-eq v0, v13, :cond_2

    const/4 v13, 0x4

    if-eq v0, v13, :cond_2

    const/16 v13, 0x10

    if-eq v11, v13, :cond_2

    const/16 v13, 0x20

    if-eq v11, v13, :cond_2

    const/16 v13, 0xd0

    if-eq v11, v13, :cond_2

    const/16 v13, 0xb0

    if-ne v11, v13, :cond_3

    .line 9000
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v13

    goto :goto_0

    .line 9003
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v1

    .line 9004
    .local v1, lastTouchOffsets:J
    invoke-static {v1, v2}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v4

    .line 9005
    .local v4, minOffset:I
    invoke-static {v1, v2}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v3

    .line 9008
    .local v3, maxOffset:I
    if-ltz v4, :cond_4

    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lt v4, v13, :cond_5

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 9009
    :cond_5
    if-ltz v3, :cond_6

    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lt v3, v13, :cond_7

    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 9014
    :cond_7
    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    const-class v14, Landroid/text/style/URLSpan;

    invoke-interface {v13, v4, v3, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .line 9015
    .local v10, urlSpans:[Landroid/text/style/URLSpan;
    array-length v13, v10

    const/4 v14, 0x1

    if-lt v13, v14, :cond_9

    .line 9016
    const/4 v13, 0x0

    aget-object v9, v10, v13

    .line 9017
    .local v9, urlSpan:Landroid/text/style/URLSpan;
    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    invoke-interface {v13, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 9018
    .local v8, selectionStart:I
    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    invoke-interface {v13, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 9037
    .end local v9           #urlSpan:Landroid/text/style/URLSpan;
    .local v7, selectionEnd:I
    :cond_8
    :goto_1
    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spannable;

    invoke-static {v13, v8, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9038
    if-le v7, v8, :cond_c

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 9020
    .end local v7           #selectionEnd:I
    .end local v8           #selectionStart:I
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v12

    .line 9021
    .local v12, wordIterator:Landroid/text/method/WordIterator;
    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13, v4, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 9023
    invoke-virtual {v12, v4}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    .line 9024
    .restart local v8       #selectionStart:I
    const/4 v13, -0x1

    if-ne v8, v13, :cond_a

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 9026
    :cond_a
    invoke-virtual {v12, v3}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v7

    .line 9027
    .restart local v7       #selectionEnd:I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_b

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 9029
    :cond_b
    if-ne v8, v7, :cond_8

    .line 9031
    invoke-direct {p0, v8}, Landroid/widget/TextView;->getCharRange(I)J

    move-result-wide v5

    .line 9032
    .local v5, range:J
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v8

    .line 9033
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v7

    goto :goto_1

    .line 9038
    .end local v5           #range:J
    .end local v12           #wordIterator:Landroid/text/method/WordIterator;
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private selectCurrentWordBaidu()Z
    .locals 19

    .prologue
    .line 9042
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v17

    if-nez v17, :cond_0

    .line 9043
    const/16 v17, 0x0

    .line 9111
    :goto_0
    return v17

    .line 9046
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 9050
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v17

    goto :goto_0

    .line 9053
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v17, v0

    and-int/lit8 v2, v17, 0xf

    .line 9054
    .local v2, klass:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v14, v0, 0xff0

    .line 9057
    .local v14, variation:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v2, v0, :cond_2

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_2

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v2, v0, :cond_2

    const/16 v17, 0x10

    move/from16 v0, v17

    if-eq v14, v0, :cond_2

    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v14, v0, :cond_2

    const/16 v17, 0xd0

    move/from16 v0, v17

    if-eq v14, v0, :cond_2

    const/16 v17, 0xb0

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 9064
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v17

    goto :goto_0

    .line 9067
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v3

    .line 9068
    .local v3, lastTouchOffsets:J
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v6

    .line 9069
    .local v6, minOffset:I
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v5

    .line 9072
    .local v5, maxOffset:I
    if-ltz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_5

    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 9073
    :cond_5
    if-ltz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_7

    :cond_6
    const/16 v17, 0x0

    goto :goto_0

    .line 9078
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spanned;

    const-class v18, Landroid/text/style/URLSpan;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v5, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 9079
    .local v13, urlSpans:[Landroid/text/style/URLSpan;
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 9080
    const/16 v17, 0x0

    aget-object v12, v13, v17

    .line 9081
    .local v12, urlSpan:Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spanned;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 9082
    .local v11, selectionStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spanned;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 9110
    .end local v12           #urlSpan:Landroid/text/style/URLSpan;
    .local v10, selectionEnd:I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v11, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9111
    if-le v10, v11, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 9084
    .end local v10           #selectionEnd:I
    .end local v11           #selectionStart:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "seg_text"

    invoke-static/range {v17 .. v18}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 9085
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWordSegment()Lcom/android/internal/util/WordSegment;

    move-result-object v16

    .line 9086
    .local v16, wordSegment:Lcom/android/internal/util/WordSegment;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6, v5}, Lcom/android/internal/util/WordSegment;->setCharSequence(Ljava/lang/CharSequence;II)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 9087
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/internal/util/WordSegment;->caculateWordSegment(I)[I

    move-result-object v9

    .line 9088
    .local v9, result:[I
    const/16 v17, 0x0

    aget v11, v9, v17

    .line 9089
    .restart local v11       #selectionStart:I
    const/16 v17, 0x1

    aget v10, v9, v17

    .line 9090
    .restart local v10       #selectionEnd:I
    const-string v17, "TextView "

    const-string/jumbo v18, "selectCurrentWord() canUseWordSeg = true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9102
    .end local v9           #result:[I
    :cond_a
    if-ne v11, v10, :cond_8

    .line 9104
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/TextView;->getCharRange(I)J

    move-result-wide v7

    .line 9105
    .local v7, range:J
    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v11

    .line 9106
    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v10

    goto :goto_1

    .line 9092
    .end local v7           #range:J
    .end local v10           #selectionEnd:I
    .end local v11           #selectionStart:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v15

    .line 9093
    .local v15, wordIterator:Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v6, v5}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 9095
    invoke-virtual {v15, v6}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v11

    .line 9096
    .restart local v11       #selectionStart:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_c

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 9098
    :cond_c
    invoke-virtual {v15, v5}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v10

    .line 9099
    .restart local v10       #selectionEnd:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_a

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 9111
    .end local v15           #wordIterator:Landroid/text/method/WordIterator;
    .end local v16           #wordSegment:Lcom/android/internal/util/WordSegment;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 7681
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 7682
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7683
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7684
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7685
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 7684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7690
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    .line 7691
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    .line 7692
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 3
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 4203
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_0

    .line 4204
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 4206
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4207
    array-length v2, p2

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    check-cast v1, Landroid/text/InputFilter;

    aput-object v1, v0, v2

    .line 4209
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 4213
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_0
    return-void

    .line 4211
    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setInputType(IZ)V
    .locals 8
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3645
    and-int/lit8 v2, p1, 0xf

    .line 3647
    .local v2, cls:I
    if-ne v2, v4, :cond_4

    .line 3648
    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_0

    move v0, v4

    .line 3650
    .local v0, autotext:Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    .line 3651
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3659
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3681
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3682
    if-eqz p2, :cond_a

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3686
    :goto_3
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_0
    move v0, v5

    .line 3648
    goto :goto_0

    .line 3652
    .restart local v0       #autotext:Z
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    .line 3653
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3654
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    .line 3655
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3657
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3660
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 3661
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_5

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_6

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_5
    move v6, v5

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_5

    .line 3664
    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 3665
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 3673
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3674
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3667
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3668
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3670
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3671
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3676
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 3677
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3679
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3684
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 3665
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 2
    .parameter "singleLine"

    .prologue
    .line 7311
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7312
    if-eqz p1, :cond_1

    .line 7313
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 7318
    :cond_0
    :goto_0
    return-void

    .line 7315
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 1375
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1376
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1380
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3
    .parameter "clip"

    .prologue
    .line 10438
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 10440
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 10441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    .line 10442
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 2208
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2211
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2212
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2213
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2214
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2217
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 1170
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1171
    .local v2, hasRelativeDrawables:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1172
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1173
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    .line 1174
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1176
    :cond_1
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1177
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1178
    .local v3, state:[I
    if-eqz p1, :cond_4

    .line 1179
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1180
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1181
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1182
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1184
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1185
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1186
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1190
    :goto_1
    if-eqz p2, :cond_5

    .line 1191
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1192
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1193
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1194
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1196
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1197
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1198
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1203
    .end local v0           #compoundRect:Landroid/graphics/Rect;
    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    .end local v3           #state:[I
    :cond_2
    :goto_2
    return-void

    .end local v2           #hasRelativeDrawables:Z
    :cond_3
    move v2, v4

    .line 1170
    goto :goto_0

    .line 1188
    .restart local v0       #compoundRect:Landroid/graphics/Rect;
    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    .restart local v2       #hasRelativeDrawables:Z
    .restart local v3       #state:[I
    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    .line 1200
    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 3184
    if-nez p1, :cond_0

    .line 3185
    const-string p1, ""

    .line 3189
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3190
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3193
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3195
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 3197
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3198
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 3199
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 3204
    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3207
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 3208
    .local v14, n:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v14, :cond_6

    .line 3209
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 3211
    .local v16, out:Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    .line 3212
    move-object/from16 p1, v16

    .line 3208
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3201
    .end local v12           #i:I
    .end local v14           #n:I
    .end local v16           #out:Ljava/lang/CharSequence;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 3202
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    .line 3216
    .restart local v12       #i:I
    .restart local v14       #n:I
    :cond_6
    if-eqz p3, :cond_7

    .line 3217
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    .line 3218
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 3219
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3225
    :cond_7
    :goto_2
    const/4 v15, 0x0

    .line 3227
    .local v15, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 3228
    const/4 v15, 0x1

    .line 3231
    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v4, :cond_9

    if-eqz v15, :cond_e

    .line 3232
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 3233
    .local v19, t:Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 3234
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3235
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 3236
    .local v13, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3243
    .end local v13           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v19           #t:Landroid/text/Editable;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    .line 3246
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_11

    :cond_b
    move-object/from16 v17, p1

    .line 3247
    check-cast v17, Landroid/text/Spannable;

    .line 3252
    .local v17, s2:Landroid/text/Spannable;
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3253
    move-object/from16 p1, v17

    .line 3254
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 3261
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3265
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3266
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3271
    .end local v17           #s2:Landroid/text/Spannable;
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 3272
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3274
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_13

    .line 3275
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 3280
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 3282
    .local v20, textLength:I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_18

    move-object/from16 v18, p1

    .line 3283
    check-cast v18, Landroid/text/Spannable;

    .line 3287
    .local v18, sp:Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 3288
    .local v21, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 3289
    .local v11, count:I
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_14

    .line 3290
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3289
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 3221
    .end local v11           #count:I
    .end local v15           #needEditableForNotification:Z
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v20           #textLength:I
    .end local v21           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_d
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    .line 3237
    .restart local v15       #needEditableForNotification:Z
    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    .line 3238
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    .line 3239
    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    .line 3240
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    .line 3249
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17       #s2:Landroid/text/Spannable;
    goto/16 :goto_4

    .line 3254
    :cond_12
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .line 3277
    .end local v17           #s2:Landroid/text/Spannable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 3292
    .restart local v11       #count:I
    .restart local v18       #sp:Landroid/text/Spannable;
    .restart local v20       #textLength:I
    .restart local v21       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_15

    .line 3293
    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 3295
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3298
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v4, :cond_16

    .line 3299
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3302
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_17

    .line 3303
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3306
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_18

    .line 3307
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 3314
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 3318
    .end local v11           #count:I
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v21           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_19

    .line 3319
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3322
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 3323
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3325
    if-eqz v15, :cond_1a

    .line 3326
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 3330
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 3331
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1151
    const/4 v0, 0x0

    .line 1152
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 1166
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1167
    return-void

    .line 1154
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1155
    goto :goto_0

    .line 1158
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1159
    goto :goto_0

    .line 1162
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5410
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v3, :cond_1

    .line 5426
    :cond_0
    :goto_0
    return v1

    .line 5414
    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 5415
    goto :goto_0

    .line 5418
    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    .line 5419
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 5420
    .local v0, variation:I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    .line 5422
    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5434
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    .line 5435
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    .line 5436
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5437
    .local v0, variation:I
    const/high16 v2, 0x4

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 5439
    :cond_0
    const/4 v1, 0x0

    .line 5443
    .end local v0           #variation:I
    :cond_1
    return v1
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 8679
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8687
    :cond_0
    :goto_0
    return v2

    .line 8681
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8682
    .local v1, start:I
    if-ltz v1, :cond_0

    .line 8684
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8685
    .local v0, end:I
    if-ltz v0, :cond_0

    .line 8687
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 4004
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 4005
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4028
    :goto_0
    return-void

    .line 4009
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_1

    .line 4010
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4011
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, #layout@textview_hint#t

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4014
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 4015
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 4016
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 4019
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 4022
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4023
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 4024
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4026
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 4027
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7432
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_1

    .line 7454
    :cond_0
    :goto_0
    return-void

    .line 7434
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7438
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7441
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    .line 7442
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7443
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7444
    .local v0, tmp:Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7445
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7446
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7447
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7448
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7451
    .end local v0           #tmp:Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7452
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startSelectionActionMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 10353
    iget-object v5, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    move v2, v4

    .line 10389
    :cond_0
    :goto_0
    return v2

    .line 10358
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_3

    .line 10359
    :cond_2
    const-string v5, "TextView"

    const-string v6, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 10360
    goto :goto_0

    .line 10363
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-nez v5, :cond_4

    .line 10365
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWordBaidu()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v4

    .line 10367
    goto :goto_0

    .line 10371
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v3

    .line 10375
    .local v3, willExtract:Z
    if-nez v3, :cond_5

    .line 10376
    new-instance v0, Landroid/widget/TextView$SelectionActionModeCallback;

    invoke-direct {v0, p0, v6}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 10377
    .local v0, actionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 10380
    .end local v0           #actionModeCallback:Landroid/view/ActionMode$Callback;
    :cond_5
    iget-object v5, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    const/4 v2, 0x1

    .line 10381
    .local v2, selectionStarted:Z
    :goto_1
    if-eqz v2, :cond_0

    iget-boolean v5, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v5, :cond_0

    .line 10383
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 10384
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 10385
    invoke-virtual {v1, p0, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #selectionStarted:Z
    :cond_7
    move v2, v4

    .line 10380
    goto :goto_1
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .parameter "start"

    .prologue
    .line 7473
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 7474
    if-eqz p1, :cond_1

    .line 7475
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7480
    :cond_0
    :goto_0
    return-void

    .line 7477
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    .line 7457
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7458
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    .line 7461
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7462
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7463
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7464
    .local v0, tmp:Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7465
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7466
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7467
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7468
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7470
    .end local v0           #tmp:Landroid/text/Layout;
    :cond_1
    return-void
.end method

.method private stopSelectionActionMode()V
    .locals 1

    .prologue
    .line 10401
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 10403
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 10405
    :cond_0
    return-void
.end method

.method private textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8897
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8898
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 9481
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 9482
    .local v4, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 9484
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_0

    .line 9499
    :goto_0
    return v7

    .line 9488
    :cond_0
    if-le v4, v3, :cond_1

    .line 9489
    move v5, v4

    .line 9490
    .local v5, tmp:I
    move v4, v3

    .line 9491
    move v3, v5

    .line 9492
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9495
    .end local v5           #tmp:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    .line 9496
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 9497
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 9499
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 5144
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 5145
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 5147
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 5149
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5150
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5151
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 5152
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 5153
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5155
    return-void
.end method

.method private updateCursorPositionBaidu(IIIF)V
    .locals 7
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 5158
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 5159
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 5161
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 5163
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5164
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5165
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 5166
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 5168
    .local v0, left:I
    if-nez p1, :cond_3

    iget v2, p0, Landroid/widget/TextView;->mSpacingMult:F

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/widget/TextView;->mSpacingAdd:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    .line 5170
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v3, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5171
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    sget-object v3, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->floor(F)F

    move-result v3

    float-to-int v3, v3

    add-int v4, v0, v1

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5178
    :goto_0
    return-void

    .line 5176
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private updateCursorsPositions()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x2

    .line 5118
    iget v5, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v5, :cond_1

    .line 5119
    iput v9, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 5141
    :cond_0
    :goto_0
    return-void

    .line 5123
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 5124
    .local v3, offset:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5125
    .local v1, line:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 5126
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5128
    .local v0, bottom:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput v5, p0, Landroid/widget/TextView;->mCursorCount:I

    .line 5130
    move v2, v0

    .line 5131
    .local v2, middle:I
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_2

    .line 5133
    add-int v5, v4, v0

    shr-int/lit8 v2, v5, 0x1

    .line 5136
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v9, v4, v2, v5}, Landroid/widget/TextView;->updateCursorPositionBaidu(IIIF)V

    .line 5138
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_0

    .line 5139
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v7, v2, v0, v5}, Landroid/widget/TextView;->updateCursorPositionBaidu(IIIF)V

    goto :goto_0

    .end local v2           #middle:I
    :cond_3
    move v5, v7

    .line 5128
    goto :goto_1
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "createSpellChecker"

    .prologue
    .line 7891
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 7892
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 7893
    new-instance v0, Landroid/widget/SpellChecker;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 7895
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    .line 7896
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 7899
    :cond_1
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2842
    const/4 v1, 0x0

    .line 2843
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2844
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 2845
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2846
    const/4 v1, 0x1

    .line 2848
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 2849
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2850
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 2851
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 2852
    const/4 v1, 0x1

    .line 2855
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 2856
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2857
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2858
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 2859
    const/4 v1, 0x1

    .line 2862
    :cond_2
    if-eqz v1, :cond_3

    .line 2863
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2865
    :cond_3
    return-void
.end method

.method private viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 7199
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 7203
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .line 7204
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 7205
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 7207
    :cond_0
    return v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 7658
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7662
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7663
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2825
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2826
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2834
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 2835
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2838
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2839
    return-void
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 10274
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 6062
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 6063
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6064
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 6065
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6066
    .local v1, nesting:I
    if-ne v1, v5, :cond_0

    .line 6067
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 6068
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6069
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 6072
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6073
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6079
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 6082
    .end local v1           #nesting:I
    :cond_0
    return-void

    .line 6075
    .restart local v1       #nesting:I
    :cond_1
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6076
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6077
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method public bringPointIntoView(I)Z
    .locals 28
    .parameter "offset"

    .prologue
    .line 6938
    const/4 v5, 0x0

    .line 6940
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    move v6, v5

    .line 7101
    .end local v5           #changed:Z
    .local v6, changed:I
    :goto_0
    return v6

    .line 6942
    .end local v6           #changed:I
    .restart local v5       #changed:Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 6945
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 6946
    .local v23, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 6947
    .local v19, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 6949
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->floor(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    .line 6950
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->ceil(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 6951
    .local v18, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 6955
    .local v15, ht:I
    sget-object v24, Landroid/widget/TextView$3;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 6970
    const/4 v11, 0x0

    .line 6974
    .local v11, grav:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    sub-int v14, v24, v25

    .line 6975
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v25

    sub-int v22, v24, v25

    .line 6977
    .local v22, vspace:I
    sub-int v24, v4, v19

    div-int/lit8 v13, v24, 0x2

    .line 6978
    .local v13, hslack:I
    move/from16 v21, v13

    .line 6980
    .local v21, vslack:I
    div-int/lit8 v24, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 6981
    div-int/lit8 v21, v22, 0x4

    .line 6982
    :cond_1
    div-int/lit8 v24, v14, 0x4

    move/from16 v0, v24

    if-le v13, v0, :cond_2

    .line 6983
    div-int/lit8 v13, v14, 0x4

    .line 6985
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    .line 6986
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v20, v0

    .line 6988
    .local v20, vs:I
    sub-int v24, v19, v20

    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 6989
    sub-int v20, v19, v21

    .line 6990
    :cond_3
    sub-int v24, v4, v20

    sub-int v25, v22, v21

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 6991
    sub-int v24, v22, v21

    sub-int v20, v4, v24

    .line 6992
    :cond_4
    sub-int v24, v15, v20

    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 6993
    sub-int v20, v15, v22

    .line 6994
    :cond_5
    rsub-int/lit8 v24, v20, 0x0

    if-lez v24, :cond_6

    .line 6995
    const/16 v20, 0x0

    .line 6997
    :cond_6
    if-eqz v11, :cond_8

    .line 6998
    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_7

    .line 6999
    sub-int v12, v23, v13

    .line 7001
    :cond_7
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    .line 7002
    sub-int v24, v14, v13

    sub-int v12, v23, v24

    .line 7006
    :cond_8
    if-gez v11, :cond_f

    .line 7007
    sub-int v24, v16, v12

    if-lez v24, :cond_9

    .line 7008
    move/from16 v12, v16

    .line 7009
    :cond_9
    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_a

    .line 7010
    sub-int v12, v18, v14

    .line 7057
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 7058
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    if-nez v24, :cond_18

    .line 7059
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7080
    :goto_3
    const/4 v5, 0x1

    .line 7083
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 7087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-nez v24, :cond_d

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 7092
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    add-int/lit8 v25, v23, -0x2

    add-int/lit8 v26, v23, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7093
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 7094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->offset(II)V

    .line 7096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 7097
    const/4 v5, 0x1

    :cond_e
    move v6, v5

    .line 7101
    .restart local v6       #changed:I
    goto/16 :goto_0

    .line 6957
    .end local v6           #changed:I
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v20           #vs:I
    .end local v21           #vslack:I
    .end local v22           #vspace:I
    :pswitch_0
    const/4 v11, 0x1

    .line 6958
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 6960
    .end local v11           #grav:I
    :pswitch_1
    const/4 v11, -0x1

    .line 6961
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 6963
    .end local v11           #grav:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .line 6964
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 6966
    .end local v11           #grav:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v24

    move/from16 v0, v24

    neg-int v11, v0

    .line 6967
    .restart local v11       #grav:I
    goto/16 :goto_1

    .line 7011
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v20       #vs:I
    .restart local v21       #vslack:I
    .restart local v22       #vspace:I
    :cond_f
    if-lez v11, :cond_11

    .line 7012
    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_10

    .line 7013
    sub-int v12, v18, v14

    .line 7014
    :cond_10
    sub-int v24, v16, v12

    if-lez v24, :cond_a

    .line 7015
    move/from16 v12, v16

    goto/16 :goto_2

    .line 7017
    :cond_11
    sub-int v24, v18, v16

    move/from16 v0, v24

    if-gt v0, v14, :cond_12

    .line 7021
    sub-int v24, v18, v16

    sub-int v24, v14, v24

    div-int/lit8 v24, v24, 0x2

    sub-int v12, v16, v24

    goto/16 :goto_2

    .line 7022
    :cond_12
    sub-int v24, v18, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    .line 7027
    sub-int v12, v18, v14

    goto/16 :goto_2

    .line 7028
    :cond_13
    add-int v24, v16, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 7033
    move/from16 v12, v16

    goto/16 :goto_2

    .line 7034
    :cond_14
    move/from16 v0, v16

    if-le v0, v12, :cond_15

    .line 7038
    move/from16 v12, v16

    goto/16 :goto_2

    .line 7039
    :cond_15
    add-int v24, v12, v14

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 7043
    sub-int v12, v18, v14

    goto/16 :goto_2

    .line 7048
    :cond_16
    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_17

    .line 7049
    sub-int v12, v23, v13

    .line 7051
    :cond_17
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 7052
    sub-int v24, v14, v13

    sub-int v12, v23, v24

    goto/16 :goto_2

    .line 7061
    :cond_18
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v26, v0

    sub-long v7, v24, v26

    .line 7062
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    sub-int v9, v12, v24

    .line 7063
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    sub-int v10, v20, v24

    .line 7065
    .local v10, dy:I
    const-wide/16 v24, 0xfa

    cmp-long v24, v7, v24

    if-lez v24, :cond_19

    .line 7066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 7067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->getDuration()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 7068
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 7077
    :goto_4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_3

    .line 7070
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_1a

    .line 7071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7074
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_4

    .line 6955
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 8606
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 8607
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 8608
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 8383
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 8384
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 8386
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 8765
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 8766
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 8770
    :goto_0
    return v0

    .line 8766
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 8770
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 7168
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 7169
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7170
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 7171
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 7172
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 7173
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 7176
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 8783
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 8775
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8776
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 8778
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public debug(I)V
    .locals 3
    .parameter "depth"

    .prologue
    .line 7212
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 7214
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7215
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7219
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 7221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7222
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 7223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7229
    :cond_0
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7230
    return-void

    .line 7227
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 12370
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 12371
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 8601
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method public disableMagnifier()V
    .locals 1

    .prologue
    .line 11534
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;

    .line 11535
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 8179
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8180
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 8181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8182
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 2869
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2870
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2873
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2876
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2877
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_9

    .line 2878
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 2879
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2880
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2882
    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2883
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2885
    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2886
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2888
    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2889
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2891
    :cond_7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2892
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2894
    :cond_8
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2895
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2898
    .end local v1           #state:[I
    :cond_9
    return-void
.end method

.method public enableMagnifier()V
    .locals 1

    .prologue
    .line 11522
    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 11527
    :goto_0
    return-void

    .line 11526
    :cond_0
    new-instance v0, Landroid/widget/TextView$MagnifierController;

    invoke-direct {v0, p0}, Landroid/widget/TextView$MagnifierController;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    .line 6085
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 6086
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6087
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 6088
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6089
    .local v1, nesting:I
    if-nez v1, :cond_0

    .line 6090
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 6093
    .end local v1           #nesting:I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 6096
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6097
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 6098
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 6099
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 6101
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 5751
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v6, 0x0

    .line 5761
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 5762
    .local v1, content:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 5763
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 5764
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5765
    .local v0, N:I
    if-gez p2, :cond_4

    .line 5766
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5767
    const/4 p2, 0x0

    .line 5768
    move p3, v0

    .line 5801
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 5802
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 5813
    .end local v0           #N:I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5814
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/16 v8, 0x800

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 5815
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5817
    :cond_1
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_2

    .line 5818
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5820
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 5821
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5822
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5823
    const/4 v6, 0x1

    .line 5825
    :cond_3
    return v6

    .line 5772
    .restart local v0       #N:I
    :cond_4
    add-int/2addr p3, p4

    .line 5774
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 5775
    check-cast v4, Landroid/text/Spanned;

    .line 5776
    .local v4, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 5778
    .local v5, spans:[Ljava/lang/Object;
    array-length v2, v5

    .line 5779
    .local v2, i:I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 5780
    add-int/lit8 v2, v2, -0x1

    .line 5781
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 5782
    .local v3, j:I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 5783
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 5784
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 5787
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #spans:[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5788
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5790
    if-le p2, v0, :cond_9

    .line 5791
    move p2, v0

    .line 5795
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 5796
    move p3, v0

    goto :goto_0

    .line 5792
    :cond_9
    if-gez p2, :cond_8

    .line 5793
    const/4 p2, 0x0

    goto :goto_3

    .line 5797
    :cond_a
    if-gez p3, :cond_0

    .line 5798
    const/4 p3, 0x0

    goto :goto_0

    .line 5805
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 5809
    .end local v0           #N:I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5810
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5811
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter
    .parameter "searched"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 8788
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 8789
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8791
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 8792
    .local v0, searchedLowerCase:Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 8793
    .local v1, textLowerCase:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8794
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8797
    .end local v0           #searchedLowerCase:Ljava/lang/String;
    .end local v1           #textLowerCase:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .locals 1
    .parameter "ims"

    .prologue
    .line 6104
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6106
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 6107
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6108
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 6113
    :cond_1
    :goto_0
    return-void

    .line 6109
    :cond_2
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 6111
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 2102
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    .line 5283
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 5284
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 5292
    :goto_0
    return v1

    .line 5287
    :cond_0
    const/4 v0, 0x0

    .line 5288
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 5289
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 5292
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 4609
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 2076
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2077
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2023
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2024
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2025
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 2029
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2039
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2040
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2041
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 2045
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1485
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1486
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    .line 1488
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    .line 1542
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1543
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1546
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    .line 1548
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 1543
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1497
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1498
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1499
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    .line 1501
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1511
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1512
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    .line 1514
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    .line 1525
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1526
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1529
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 1531
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    .line 1526
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 1471
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1472
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1473
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    .line 1475
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 2317
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 10345
    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1265
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7383
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3933
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 1591
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 1592
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1614
    :cond_0
    :goto_0
    return v0

    .line 1595
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    .line 1596
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 1599
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1600
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1601
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1602
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1604
    .local v2, layoutht:I
    if-ge v2, v4, :cond_0

    .line 1608
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1609
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 1610
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    .line 1611
    :cond_3
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    .line 1614
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 1558
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 1559
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1581
    :cond_0
    :goto_0
    return v3

    .line 1562
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    .line 1563
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    .line 1566
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1567
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1568
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1569
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1571
    .local v2, layoutht:I
    if-ge v2, v4, :cond_0

    .line 1575
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1576
    .local v1, gravity:I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    .line 1578
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 1579
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    .line 1581
    :cond_3
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .parameter "offsetRequired"

    .prologue
    .line 5319
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .parameter "offsetRequired"

    .prologue
    .line 5301
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5310
    :goto_0
    return v1

    .line 5303
    :cond_0
    const/4 v0, 0x0

    .line 5304
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 5305
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 5308
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 5310
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 4219
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 12
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    .line 5191
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v7, :cond_0

    .line 5192
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5241
    :goto_0
    return-void

    .line 5196
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 5197
    .local v5, selEnd:I
    if-gez v5, :cond_1

    .line 5198
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 5202
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 5203
    .local v6, selStart:I
    if-ltz v6, :cond_2

    if-lt v6, v5, :cond_4

    .line 5204
    :cond_2
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 5205
    .local v0, line:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 5206
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 5207
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x2

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5208
    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 5235
    .end local v0           #line:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    .line 5236
    .local v3, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    .line 5237
    .local v4, paddingTop:I
    iget v7, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x30

    if-eq v7, v8, :cond_3

    .line 5238
    invoke-direct {p0, v11}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    add-int/2addr v4, v7

    .line 5240
    :cond_3
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 5210
    .end local v3           #paddingLeft:I
    .end local v4           #paddingTop:I
    :cond_4
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5211
    .local v2, lineStart:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5212
    .local v1, lineEnd:I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 5213
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 5214
    if-ne v2, v1, :cond_5

    .line 5215
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5216
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5220
    :cond_5
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v7, :cond_6

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5221
    :cond_6
    iget-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v7, :cond_7

    .line 5222
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 5223
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v5, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5224
    iput-boolean v11, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5226
    :cond_7
    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v8

    .line 5227
    :try_start_0
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5228
    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 5229
    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 5230
    monitor-exit v8

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 3116
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2552
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 3532
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    .line 2607
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 3760
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3749
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .parameter "create"

    .prologue
    const/4 v0, 0x0

    .line 3916
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_2

    .line 3917
    if-nez p1, :cond_1

    .line 3924
    :cond_0
    :goto_0
    return-object v0

    .line 3918
    :cond_1
    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3920
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 3921
    if-eqz p1, :cond_0

    .line 3922
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3924
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 3695
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 12224
    iget-boolean v2, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    .line 12235
    :goto_0
    return-object v1

    .line 12228
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-nez v2, :cond_1

    .line 12229
    new-instance v2, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    .line 12231
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 12232
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 12235
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    goto :goto_0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 8705
    iget v4, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v4, v4

    const v5, 0x40a95555

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 8730
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 8706
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v4, v7, :cond_3

    .line 8708
    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8709
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8710
    .local v2, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8711
    iget v3, v2, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 8715
    .end local v2           #marquee:Landroid/widget/TextView$Marquee;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 8716
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    .line 8717
    .local v1, layoutDirection:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 8718
    .local v0, absoluteGravity:I
    and-int/lit8 v4, v0, 0x7

    packed-switch v4, :pswitch_data_0

    .line 8730
    .end local v0           #absoluteGravity:I
    .end local v1           #layoutDirection:I
    :cond_3
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v3

    goto :goto_0

    .line 8722
    .restart local v0       #absoluteGravity:I
    .restart local v1       #layoutDirection:I
    :pswitch_2
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    iget v4, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 8718
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 4598
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v2, 0x0

    .line 5261
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    .line 5262
    if-eqz p2, :cond_0

    .line 5263
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5277
    :cond_0
    :goto_0
    return v2

    .line 5268
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 5270
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 5271
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 5272
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 5274
    :cond_2
    if-eqz p2, :cond_3

    .line 5275
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5277
    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 5248
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2501
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 2394
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12081
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 12084
    :goto_0
    return v1

    .line 12082
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 12083
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 12084
    .local v1, offset:I
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 2560
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3882
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .parameter "who"

    .prologue
    .line 4707
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 4716
    :goto_0
    return v1

    .line 4708
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 4709
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4710
    .local v0, drawables:Landroid/widget/TextView$Drawables;
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_2

    .line 4713
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    goto :goto_0

    .line 4716
    .end local v0           #drawables:Landroid/widget/TextView$Drawables;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 8735
    iget v6, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v7, 0x40a95555

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 8760
    :goto_0
    :pswitch_0
    return v5

    .line 8736
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_2

    .line 8738
    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8739
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8740
    .local v3, marquee:Landroid/widget/TextView$Marquee;
    iget v5, v3, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v6, v3, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 8741
    .end local v3           #marquee:Landroid/widget/TextView$Marquee;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 8742
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    .line 8743
    .local v1, layoutDirection:I
    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 8744
    .local v0, absoluteGravity:I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    .line 8760
    .end local v0           #absoluteGravity:I
    .end local v1           #layoutDirection:I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    .line 8746
    .restart local v0       #absoluteGravity:I
    .restart local v1       #layoutDirection:I
    :pswitch_2
    iget v5, p0, Landroid/widget/TextView;->mRight:I

    iget v6, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 8748
    .local v4, textWidth:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 8749
    .local v2, lineWidth:F
    int-to-float v5, v4

    sub-float v5, v2, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 8754
    .end local v2           #lineWidth:F
    .end local v4           #textWidth:I
    :pswitch_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 8744
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 4614
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;
    .locals 2

    .prologue
    .line 12239
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 12240
    const/4 v1, 0x0

    .line 12250
    :goto_0
    return-object v1

    .line 12243
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 12244
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    .line 12246
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 12247
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 12250
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7245
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7237
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public final getSoftInputShownOnFocus()Z
    .locals 1

    .prologue
    .line 2417
    iget-boolean v0, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 2224
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 5

    .prologue
    .line 9123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9124
    .local v0, locale:Ljava/util/Locale;
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 9126
    .local v2, textServicesManager:Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 9127
    .local v1, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 9128
    new-instance v0, Ljava/util/Locale;

    .end local v0           #locale:Ljava/util/Locale;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 9130
    .restart local v0       #locale:Ljava/util/Locale;
    :cond_0
    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 2168
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 4604
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 1669
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    .line 1651
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 1623
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 1631
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    .line 1641
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 1660
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2428
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 2429
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 2431
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 9142
    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 9143
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9145
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method getWordSegment()Lcom/android/internal/util/WordSegment;
    .locals 1

    .prologue
    .line 9150
    iget-object v0, p0, Landroid/widget/TextView;->mWordSegment:Lcom/android/internal/util/WordSegment;

    if-nez v0, :cond_0

    .line 9151
    new-instance v0, Lcom/android/internal/util/WordSegment;

    invoke-direct {v0}, Lcom/android/internal/util/WordSegment;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mWordSegment:Lcom/android/internal/util/WordSegment;

    .line 9153
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mWordSegment:Lcom/android/internal/util/WordSegment;

    return-object v0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 7751
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 7752
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 7753
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 7755
    :cond_1
    if-eqz v0, :cond_2

    .line 7756
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 7757
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_3

    .line 7758
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 7759
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 7764
    :goto_0
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 7767
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 7768
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 7769
    return-void

    .line 7761
    :cond_3
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 7762
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 12213
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    .line 7252
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7253
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7255
    .local v0, selectionEnd:I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 12220
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5584
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    .line 5585
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5587
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .parameter "drawable"

    .prologue
    .line 4656
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4657
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4658
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/TextView;->mScrollX:I

    .line 4659
    .local v7, scrollX:I
    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    .line 4664
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4665
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_0

    .line 4666
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_2

    .line 4667
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4668
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4669
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4671
    .local v9, vspace:I
    iget v10, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 4672
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4697
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_0
    :goto_0
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4700
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_1
    return-void

    .line 4673
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_2
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_3

    .line 4674
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4675
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4676
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4678
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 4679
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4680
    goto :goto_0

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_3
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_4

    .line 4681
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4682
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4683
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4685
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4686
    iget v10, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 4687
    goto :goto_0

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_4
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_0

    .line 4688
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4689
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4690
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4692
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4693
    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .parameter "start"
    .parameter "end"
    .parameter "invalidateCursor"

    .prologue
    .line 4398
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    .line 4399
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 4449
    :goto_0
    return-void

    .line 4401
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 4402
    .local v8, lineStart:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 4410
    .local v10, top:I
    if-lez v8, :cond_1

    .line 4411
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 4416
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 4417
    move v7, v8

    .line 4421
    .local v7, lineEnd:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 4423
    .local v2, bottom:I
    if-eqz p3, :cond_3

    .line 4424
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v5, v12, :cond_3

    .line 4425
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4426
    .local v3, bounds:Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4427
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4424
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4419
    .end local v2           #bottom:I
    .end local v3           #bounds:Landroid/graphics/Rect;
    .end local v5           #i:I
    .end local v7           #lineEnd:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7       #lineEnd:I
    goto :goto_1

    .line 4431
    .restart local v2       #bottom:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 4432
    .local v4, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 4435
    .local v11, verticalPadding:I
    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    .line 4436
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 4437
    .local v6, left:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 4438
    .local v9, right:I
    add-int/2addr v6, v4

    .line 4439
    add-int/2addr v9, v4

    .line 4446
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 4442
    .end local v6           #left:I
    .end local v9           #right:I
    :cond_4
    move v6, v4

    .line 4443
    .restart local v6       #left:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9       #right:I
    goto :goto_3
.end method

.method isInBatchEditMode()Z
    .locals 2

    .prologue
    .line 12254
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 12255
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_1

    .line 12256
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 12258
    :goto_0
    return v1

    .line 12256
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 12258
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 9267
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9268
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 4593
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestionsEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10300
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-eq v3, v2, :cond_1

    .line 10304
    :cond_0
    :goto_0
    return v1

    .line 10301
    :cond_1
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    .line 10303
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 10304
    .local v0, variation:I
    if-eqz v0, :cond_2

    const/16 v3, 0x30

    if-eq v0, v3, :cond_2

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    .line 4759
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 4631
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4632
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    .line 4633
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4634
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4636
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4637
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4639
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 4640
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4642
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 4643
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4645
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 4646
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4648
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 4649
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4652
    :cond_5
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 32
    .parameter "wantWidth"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 6273
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 6276
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 6277
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 6279
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6281
    if-gez p1, :cond_0

    .line 6282
    const/16 p1, 0x0

    .line 6284
    :cond_0
    if-gez p2, :cond_1

    .line 6285
    const/16 p2, 0x0

    .line 6288
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 6289
    .local v6, alignment:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v2, :cond_b

    const/4 v7, 0x1

    .line 6290
    .local v7, shouldEllipsize:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_c

    const/16 v31, 0x1

    .line 6292
    .local v31, switchEllipsize:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6293
    .local v8, effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 6295
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 6298
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_3

    .line 6299
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    .line 6302
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_d

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6304
    if-eqz v31, :cond_4

    .line 6305
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_e

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 6307
    .local v15, oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_f

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6311
    .end local v15           #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_10

    const/4 v7, 0x1

    .line 6312
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6314
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 6315
    if-eqz v7, :cond_5

    move/from16 p2, p1

    .line 6317
    :cond_5
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_6

    .line 6318
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 6320
    if-eqz p4, :cond_6

    .line 6321
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6325
    :cond_6
    if-eqz p4, :cond_17

    .line 6326
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_12

    if-eqz v7, :cond_7

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_12

    .line 6328
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_11

    .line 6329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6339
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6377
    :cond_8
    :goto_7
    if-eqz p6, :cond_9

    .line 6378
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6381
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_a

    .line 6382
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_a

    .line 6383
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    .line 6386
    .local v30, height:I
    const/4 v2, -0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_1a

    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_1a

    .line 6387
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6396
    .end local v30           #height:I
    :cond_a
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6397
    return-void

    .line 6289
    .end local v7           #shouldEllipsize:Z
    .end local v8           #effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    .end local v31           #switchEllipsize:Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 6290
    .restart local v7       #shouldEllipsize:Z
    :cond_c
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 6302
    .restart local v8       #effectiveEllipsize:Landroid/text/TextUtils$TruncateAt;
    .restart local v31       #switchEllipsize:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 6305
    :cond_e
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_3

    .line 6307
    .restart local v15       #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 6311
    .end local v15           #oppositeEllipsize:Landroid/text/TextUtils$TruncateAt;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 6334
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_6

    .line 6340
    :cond_12
    if-eqz v7, :cond_14

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_14

    .line 6341
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_13

    .line 6342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6348
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6353
    :cond_14
    if-eqz v7, :cond_16

    .line 6354
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_9
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_15
    const v29, 0x7fffffff

    goto :goto_9

    .line 6360
    :cond_16
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6364
    :cond_17
    if-eqz v7, :cond_19

    .line 6365
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_a
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_18
    const v29, 0x7fffffff

    goto :goto_a

    .line 6371
    :cond_19
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6390
    .restart local v30       #height:I
    :cond_1a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_8
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    .line 7113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 7114
    const/16 v17, 0x0

    .line 7163
    :goto_0
    return v17

    .line 7116
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 7117
    .local v12, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 7118
    .local v3, end:I
    if-eq v12, v3, :cond_1

    .line 7119
    const/16 v17, 0x0

    goto :goto_0

    .line 7124
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 7126
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 7127
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 7128
    .local v2, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 7129
    .local v16, vspace:I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 7130
    .local v15, vslack:I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 7131
    div-int/lit8 v15, v16, 0x4

    .line 7132
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .line 7134
    .local v14, vs:I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 7135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 7142
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 7143
    .local v6, hspace:I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7144
    .local v5, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 7145
    .local v7, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 7148
    .local v11, rightChar:I
    if-ge v7, v11, :cond_6

    move v9, v7

    .line 7149
    .local v9, lowChar:I
    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    .line 7151
    .local v4, highChar:I
    :goto_3
    move v10, v12

    .line 7152
    .local v10, newStart:I
    if-ge v10, v9, :cond_8

    .line 7153
    move v10, v9

    .line 7158
    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    .line 7159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7160
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7136
    .end local v4           #highChar:I
    .end local v5           #hs:I
    .end local v6           #hspace:I
    .end local v7           #leftChar:I
    .end local v9           #lowChar:I
    .end local v10           #newStart:I
    .end local v11           #rightChar:I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    .line 7137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .restart local v5       #hs:I
    .restart local v6       #hspace:I
    .restart local v7       #leftChar:I
    .restart local v11       #rightChar:I
    :cond_6
    move v9, v11

    .line 7148
    goto :goto_2

    .restart local v9       #lowChar:I
    :cond_7
    move v4, v11

    .line 7149
    goto :goto_3

    .line 7154
    .restart local v4       #highChar:I
    .restart local v10       #newStart:I
    :cond_8
    if-le v10, v4, :cond_4

    .line 7155
    move v10, v4

    goto :goto_4

    .line 7163
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4528
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4530
    iput-boolean v3, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 4532
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 4533
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 4534
    iput-boolean v3, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4537
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4540
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 4541
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4543
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 4544
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4548
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 4550
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    .line 4551
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 6138
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 5689
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 5950
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 5961
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 5962
    new-instance v0, Landroid/widget/TextView$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/TextView$CorrectionHighlighter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    .line 5967
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 5968
    return-void

    .line 5964
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->access$300(Landroid/widget/TextView$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x0

    .line 4797
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    .line 4798
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4804
    .local v0, drawableState:[I
    :goto_0
    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v4, :cond_2

    .line 4809
    array-length v2, v0

    .line 4810
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 4811
    aget v4, v0, v1

    const v5, #attr@state_pressed#t

    if-ne v4, v5, :cond_1

    .line 4812
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 4813
    .local v3, nonPressedState:[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4814
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4820
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #nonPressedState:[I
    :goto_2
    return-object v3

    .line 4800
    .end local v0           #drawableState:[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 4801
    .restart local v0       #drawableState:[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 4810
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2
    move-object v3, v0

    .line 4820
    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .parameter "outAttrs"

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x800

    .line 5693
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5694
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_0

    .line 5695
    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1}, Landroid/widget/TextView$InputMethodState;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5697
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 5698
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_5

    .line 5699
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5700
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 5701
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 5702
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 5703
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 5707
    :goto_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5708
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5710
    :cond_1
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5711
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x400

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5713
    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_3

    .line 5715
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 5718
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5724
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5725
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5728
    :cond_3
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5730
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5732
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 5733
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_7

    .line 5734
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 5735
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 5736
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 5737
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 5741
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-object v0

    .line 5705
    :cond_5
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 5722
    :cond_6
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 5741
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 4555
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4557
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4558
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_0

    .line 4559
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4560
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4563
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 4564
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 4567
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_2

    .line 4568
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v2, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4571
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_3

    .line 4572
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    .line 4575
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_4

    .line 4576
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    .line 4579
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4581
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 4583
    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_5

    .line 4584
    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v1}, Landroid/widget/SpellChecker;->closeSession()V

    .line 4587
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 4589
    :cond_5
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 12126
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 12146
    :goto_0
    return v1

    .line 12128
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v1

    goto :goto_0

    .line 12131
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move v1, v2

    .line 12132
    goto :goto_0

    .line 12135
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 12136
    .local v0, offset:I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v1, v2

    .line 12137
    goto :goto_0

    .line 12140
    .end local v0           #offset:I
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/TextView;->onDrop(Landroid/view/DragEvent;)V

    move v1, v2

    .line 12141
    goto :goto_0

    .line 12126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 52
    .parameter "canvas"

    .prologue
    .line 4825
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_0

    .line 4826
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v40

    .line 4827
    .local v40, observer:Landroid/view/ViewTreeObserver;
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4828
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4831
    .end local v40           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v11, 0x40a95555

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_1

    .line 5115
    :goto_0
    return-void

    .line 4833
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4836
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4838
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    .line 4839
    .local v25, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v27

    .line 4840
    .local v27, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    .line 4841
    .local v26, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v24

    .line 4842
    .local v24, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v43, v0

    .line 4843
    .local v43, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v44, v0

    .line 4844
    .local v44, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v42, v0

    .line 4845
    .local v42, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v39, v0

    .line 4846
    .local v39, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v18, v0

    .line 4847
    .local v18, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v46, v0

    .line 4849
    .local v46, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v30, v0

    .line 4850
    .local v30, dr:Landroid/widget/TextView$Drawables;
    if-eqz v30, :cond_5

    .line 4856
    sub-int v6, v18, v46

    sub-int v6, v6, v24

    sub-int v49, v6, v27

    .line 4857
    .local v49, vspace:I
    sub-int v6, v42, v39

    sub-int v6, v6, v26

    sub-int v35, v6, v25

    .line 4861
    .local v35, hspace:I
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 4862
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4863
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v6, v6, v43

    int-to-float v6, v6

    add-int v11, v44, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v49, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4866
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4867
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4872
    :cond_2
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 4873
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4874
    add-int v6, v43, v42

    sub-int v6, v6, v39

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v6, v11

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v44, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v49, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4876
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4877
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4882
    :cond_3
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 4883
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4884
    add-int v6, v43, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v11, v11, v44

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4886
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4887
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4892
    :cond_4
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 4893
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4894
    add-int v6, v43, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v44, v18

    sub-int v11, v11, v46

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4897
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4898
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4902
    .end local v35           #hspace:I
    .end local v49           #vspace:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v23, v0

    .line 4904
    .local v23, color:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v6, :cond_6

    .line 4905
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4908
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    .line 4909
    .local v37, layout:Landroid/text/Layout;
    move/from16 v29, v23

    .line 4911
    .local v29, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 4912
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_7

    .line 4913
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v23, v0

    .line 4916
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    .line 4919
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 4920
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_9

    .line 4922
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4924
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v11

    iput-object v11, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 4926
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v33

    .line 4932
    .local v33, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v32

    .line 4934
    .local v32, extendedPaddingBottom:I
    add-int v6, v25, v43

    int-to-float v0, v6

    move/from16 v20, v0

    .line 4935
    .local v20, clipLeft:F
    add-int v6, v33, v44

    int-to-float v0, v6

    move/from16 v22, v0

    .line 4936
    .local v22, clipTop:F
    sub-int v6, v42, v39

    sub-int v6, v6, v26

    add-int v6, v6, v43

    int-to-float v0, v6

    move/from16 v21, v0

    .line 4937
    .local v21, clipRight:F
    sub-int v6, v18, v46

    sub-int v6, v6, v32

    add-int v6, v6, v44

    int-to-float v0, v6

    move/from16 v19, v0

    .line 4939
    .local v19, clipBottom:F
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v11, 0x0

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_a

    .line 4940
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 4941
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 4943
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v22, v22, v6

    .line 4944
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 4947
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4949
    const/16 v48, 0x0

    .line 4950
    .local v48, voffsetText:I
    const/16 v47, 0x0

    .line 4955
    .local v47, voffsetCursor:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v6, v6, 0x70

    const/16 v11, 0x30

    if-eq v6, v11, :cond_b

    .line 4956
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v48

    .line 4957
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v47

    .line 4959
    :cond_b
    move/from16 v0, v25

    int-to-float v6, v0

    add-int v11, v33, v48

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4962
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v38

    .line 4963
    .local v38, layoutDirection:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v38

    invoke-static {v6, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v17

    .line 4964
    .local v17, absoluteGravity:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v11, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v11, 0x1

    if-eq v6, v11, :cond_d

    .line 4966
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_c

    and-int/lit8 v6, v17, 0x7

    const/4 v11, 0x3

    if-eq v6, v11, :cond_c

    .line 4968
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v6, v11

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4972
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4973
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4977
    :cond_d
    const/16 v34, 0x0

    .line 4978
    .local v34, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 4979
    .local v8, selEnd:I
    const/16 v31, 0x0

    .line 4986
    .local v31, drawCursor:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4987
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 4988
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 4990
    if-ltz v7, :cond_12

    .line 4991
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v6, :cond_f

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 4993
    :cond_f
    if-ne v7, v8, :cond_1c

    .line 4994
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/widget/TextView;->mShowCursor:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x1f4

    cmp-long v6, v11, v13

    if-gez v6, :cond_12

    .line 4996
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_10

    .line 4997
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4998
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v11, v12}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 4999
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorsPositions()V

    .line 5000
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5004
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5005
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_11

    .line 5006
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5009
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 5011
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCursorCount:I

    if-lez v6, :cond_1b

    const/16 v31, 0x1

    .line 5044
    :cond_12
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v36, v0

    .line 5045
    .local v36, ims:Landroid/widget/TextView$InputMethodState;
    sub-int v28, v47, v48

    .line 5046
    .local v28, cursorOffsetVertical:I
    if-eqz v36, :cond_17

    move-object/from16 v0, v36

    iget v6, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_17

    .line 5047
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 5048
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_17

    .line 5049
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 5050
    const/16 v41, 0x0

    .line 5051
    .local v41, reported:Z
    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_13

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_14

    .line 5055
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v41

    .line 5057
    :cond_14
    if-nez v41, :cond_16

    if-eqz v34, :cond_16

    .line 5058
    const/4 v9, -0x1

    .line 5059
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 5060
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_15

    .line 5061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v45, v0

    check-cast v45, Landroid/text/Spannable;

    .line 5062
    .local v45, sp:Landroid/text/Spannable;
    invoke-static/range {v45 .. v45}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 5063
    invoke-static/range {v45 .. v45}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v45           #sp:Landroid/text/Spannable;
    :cond_15
    move-object/from16 v6, p0

    .line 5065
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 5069
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v41           #reported:Z
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz v34, :cond_17

    .line 5070
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5071
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v11, 0x0

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    aput v14, v6, v11

    .line 5073
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5074
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5076
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move/from16 v0, v28

    int-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 5078
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v11, v11

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, v36

    iget-object v13, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, v36

    iget-object v14, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    const-wide/high16 v50, 0x3fe0

    add-double v14, v14, v50

    double-to-int v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 5083
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 5090
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-eqz v6, :cond_18

    .line 5091
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 5094
    :cond_18
    if-eqz v31, :cond_19

    .line 5095
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 5098
    const/16 v34, 0x0

    .line 5101
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5103
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 5104
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5105
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5114
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 5011
    .end local v28           #cursorOffsetVertical:I
    .end local v36           #ims:Landroid/widget/TextView$InputMethodState;
    :cond_1b
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 5013
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5014
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_1d

    .line 5015
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5016
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v8, v11}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5017
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5021
    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5022
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_1e

    .line 5023
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5026
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    goto/16 :goto_1
.end method

.method public onEditorAction(I)V
    .locals 21
    .parameter "actionCode"

    .prologue
    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v18, v0

    .line 3801
    .local v18, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v18, :cond_4

    .line 3802
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    .line 3803
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3859
    :cond_0
    :goto_0
    return-void

    .line 3814
    :cond_1
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 3815
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 3816
    .local v20, v:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 3817
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3818
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3824
    .end local v20           #v:Landroid/view/View;
    :cond_2
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 3825
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 3826
    .restart local v20       #v:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 3827
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3828
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3834
    .end local v20           #v:Landroid/view/View;
    :cond_3
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 3835
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 3836
    .local v19, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3837
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 3843
    .end local v19           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 3844
    .local v17, h:Landroid/os/Handler;
    if-eqz v17, :cond_0

    .line 3845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3846
    .local v3, eventTime:J
    const/16 v14, 0x3f3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3852
    const/16 v2, 0x3f3

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 6146
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 8199
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 8202
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8203
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8207
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 8209
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 8310
    :goto_0
    return-void

    .line 8213
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 8215
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 8217
    if-eqz p1, :cond_d

    .line 8218
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 8219
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 8223
    .local v8, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_b

    if-nez v9, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_b

    move v6, v1

    .line 8225
    .local v6, isFocusHighlighted:Z
    :goto_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v6, :cond_c

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 8227
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_1

    if-ltz v9, :cond_1

    if-gez v8, :cond_7

    .line 8230
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    .line 8231
    .local v7, lastTapPosition:I
    if-ltz v7, :cond_2

    .line 8232
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8235
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3

    .line 8236
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v3, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 8244
    :cond_3
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_5

    :cond_4
    if-ltz v9, :cond_5

    if-ltz v8, :cond_5

    .line 8255
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8258
    :cond_5
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_6

    .line 8259
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    .line 8262
    :cond_6
    iput-boolean v1, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 8265
    .end local v7           #lastTapPosition:I
    :cond_7
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 8266
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 8268
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_8

    .line 8269
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    .line 8270
    .local v10, sp:Landroid/text/Spannable;
    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 8273
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 8275
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 8276
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 8303
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8305
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_a

    .line 8306
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 8309
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .restart local v8       #selEnd:I
    .restart local v9       #selStart:I
    :cond_b
    move v6, v2

    .line 8223
    goto :goto_1

    .restart local v6       #isFocusHighlighted:Z
    :cond_c
    move v0, v2

    .line 8225
    goto :goto_2

    .line 8279
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 8280
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 8283
    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 8285
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_f

    .line 8288
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 8289
    .restart local v9       #selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 8290
    .restart local v8       #selEnd:I
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8291
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8298
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :goto_4
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_9

    .line 8299
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_3

    .line 8293
    :cond_f
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8294
    invoke-direct {p0}, Landroid/widget/TextView;->downgradeEasyCorrectionSpans()V

    goto :goto_4
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 8541
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8543
    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 8544
    const/4 v0, 0x1

    .line 8552
    :goto_0
    return v0

    .line 8546
    :catch_0
    move-exception v0

    .line 8552
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 9203
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9205
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9206
    .local v0, isPassword:Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 9208
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 9209
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9210
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 9211
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9213
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 9217
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9219
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9220
    .local v0, isPassword:Z
    if-nez v0, :cond_0

    .line 9221
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 9223
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 9224
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5353
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 5354
    .local v0, which:I
    if-nez v0, :cond_0

    .line 5356
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 5359
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 5364
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5366
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 5367
    .local v2, which:I
    if-nez v2, :cond_0

    .line 5369
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 5400
    :goto_0
    return v3

    .line 5371
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    .line 5373
    goto :goto_0

    .line 5376
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 5383
    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 5384
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_4

    .line 5385
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 5386
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 5387
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 5388
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 5390
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    .line 5400
    goto :goto_0

    .line 5392
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 5393
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 5394
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 5395
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 5396
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 5324
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 5325
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move v0, v2

    .line 5327
    .local v0, isInSelectionMode:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 5328
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 5329
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 5330
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 5331
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5348
    .end local v0           #isInSelectionMode:Z
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_1
    return v2

    .line 5325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5334
    .restart local v0       #isInSelectionMode:Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 5335
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 5336
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_3

    .line 5337
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 5339
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5340
    if-eqz v0, :cond_4

    .line 5341
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_1

    .line 5348
    .end local v0           #isInSelectionMode:Z
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 8850
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 8851
    .local v0, filteredMetaState:I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8852
    sparse-switch p1, :sswitch_data_0

    .line 8875
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 8854
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8855
    const v1, #id@selectAll#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 8859
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8860
    const v1, #id@cut#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 8864
    :sswitch_2
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8865
    const v1, #id@copy#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 8869
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/TextView;->canPasteBaidu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8870
    const v1, #id@paste#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 8852
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x82

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5591
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5592
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5685
    :goto_0
    return v2

    .line 5595
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5677
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_8

    .line 5678
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    .line 5679
    goto :goto_0

    .line 5597
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5607
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5608
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5610
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5611
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 5612
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v2, :cond_2

    .line 5613
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5618
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 5621
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5622
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v2, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v2, :cond_3

    .line 5625
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v4, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 5626
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 5628
    goto :goto_0

    .line 5632
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5644
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5645
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 5647
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 5648
    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5649
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5659
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v3

    .line 5660
    goto/16 :goto_0

    .line 5661
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 5665
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5666
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5667
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5672
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 5681
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_9

    .line 5682
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 5683
    goto/16 :goto_0

    .line 5685
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 5595
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 9135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9136
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 6535
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 6536
    .local v24, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 6537
    .local v14, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 6538
    .local v25, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 6543
    .local v15, heightSize:I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6544
    .local v5, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6546
    .local v6, hintBoring:Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    .line 6547
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    .line 6550
    :cond_0
    const/4 v9, -0x1

    .line 6551
    .local v9, des:I
    const/4 v12, 0x0

    .line 6553
    .local v12, fromexisting:Z
    const/high16 v2, 0x4000

    move/from16 v0, v24

    if-ne v0, v2, :cond_7

    .line 6555
    move/from16 v22, v25

    .line 6639
    .local v22, width:I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .line 6640
    .local v3, want:I
    move/from16 v21, v3

    .line 6642
    .local v21, unpaddedWidth:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x10

    .line 6644
    :cond_2
    move v4, v3

    .line 6645
    .local v4, hintWant:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_17

    move/from16 v17, v4

    .line 6647
    .local v17, hintWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    .line 6648
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6675
    :cond_3
    :goto_2
    const/high16 v2, 0x4000

    if-ne v14, v2, :cond_21

    .line 6677
    move v13, v15

    .line 6678
    .local v13, height:I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 6690
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v20, v2, v7

    .line 6691
    .local v20, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    .line 6692
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 6699
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v21

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_22

    .line 6702
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6707
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 6708
    return-void

    .line 6557
    .end local v3           #want:I
    .end local v4           #hintWant:I
    .end local v13           #height:I
    .end local v17           #hintWidth:I
    .end local v20           #unpaddedHeight:I
    .end local v21           #unpaddedWidth:I
    .end local v22           #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_8

    .line 6558
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    .line 6561
    :cond_8
    if-gez v9, :cond_12

    .line 6562
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    .line 6563
    if-eqz v5, :cond_9

    .line 6564
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6570
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_13

    .line 6571
    :cond_a
    if-gez v9, :cond_b

    .line 6572
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v9, v2

    .line 6575
    :cond_b
    move/from16 v22, v9

    .line 6580
    .restart local v22       #width:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 6581
    .local v11, dr:Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_c

    .line 6582
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 6583
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 6586
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_11

    .line 6587
    const/16 v16, -0x1

    .line 6590
    .local v16, hintDes:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_d

    .line 6591
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v16

    .line 6594
    :cond_d
    if-gez v16, :cond_e

    .line 6595
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v7, v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 6596
    if-eqz v6, :cond_e

    .line 6597
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6601
    :cond_e
    if-eqz v6, :cond_f

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_14

    .line 6602
    :cond_f
    if-gez v16, :cond_10

    .line 6603
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 6607
    :cond_10
    move/from16 v17, v16

    .line 6612
    .restart local v17       #hintWidth:I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 6613
    move/from16 v22, v17

    .line 6617
    .end local v16           #hintDes:I
    .end local v17           #hintWidth:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v22, v22, v2

    .line 6619
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_15

    .line 6620
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 6625
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    .line 6626
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 6632
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 6634
    const/high16 v2, -0x8000

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    .line 6635
    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_0

    .line 6567
    .end local v11           #dr:Landroid/widget/TextView$Drawables;
    .end local v22           #width:I
    :cond_12
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 6577
    :cond_13
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v22, v0

    .restart local v22       #width:I
    goto/16 :goto_6

    .line 6609
    .restart local v11       #dr:Landroid/widget/TextView$Drawables;
    .restart local v16       #hintDes:I
    :cond_14
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v0

    .restart local v17       #hintWidth:I
    goto :goto_7

    .line 6622
    .end local v16           #hintDes:I
    .end local v17           #hintWidth:I
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_8

    .line 6628
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto :goto_9

    .line 6645
    .end local v11           #dr:Landroid/widget/TextView$Drawables;
    .restart local v3       #want:I
    .restart local v4       #hintWant:I
    .restart local v21       #unpaddedWidth:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v17

    goto/16 :goto_1

    .line 6651
    .restart local v17       #hintWidth:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_19

    move/from16 v0, v17

    if-ne v0, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v22, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1d

    :cond_19
    const/16 v18, 0x1

    .line 6656
    .local v18, layoutChanged:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1a

    if-eqz v12, :cond_1e

    if-ltz v9, :cond_1e

    if-gt v9, v3, :cond_1e

    :cond_1a
    const/16 v23, 0x1

    .line 6661
    .local v23, widthChanged:Z
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_1f

    :cond_1b
    const/16 v19, 0x1

    .line 6663
    .local v19, maximumChanged:Z
    :goto_c
    if-nez v18, :cond_1c

    if-eqz v19, :cond_3

    .line 6664
    :cond_1c
    if-nez v19, :cond_20

    if-eqz v23, :cond_20

    .line 6665
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 6651
    .end local v18           #layoutChanged:Z
    .end local v19           #maximumChanged:Z
    .end local v23           #widthChanged:Z
    :cond_1d
    const/16 v18, 0x0

    goto :goto_a

    .line 6656
    .restart local v18       #layoutChanged:Z
    :cond_1e
    const/16 v23, 0x0

    goto :goto_b

    .line 6661
    .restart local v23       #widthChanged:Z
    :cond_1f
    const/16 v19, 0x0

    goto :goto_c

    .line 6667
    .restart local v19       #maximumChanged:Z
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    .line 6680
    .end local v18           #layoutChanged:Z
    .end local v19           #maximumChanged:Z
    .end local v23           #widthChanged:Z
    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .line 6682
    .local v10, desired:I
    move v13, v10

    .line 6683
    .restart local v13       #height:I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 6685
    const/high16 v2, -0x8000

    if-ne v14, v2, :cond_4

    .line 6686
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_3

    .line 6704
    .end local v10           #desired:I
    .restart local v20       #unpaddedHeight:I
    :cond_22
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 9190
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9192
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9193
    .local v0, isPassword:Z
    if-nez v0, :cond_0

    .line 9194
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9195
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9196
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9199
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4468
    iget v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v4, v2, :cond_1

    .line 4523
    :cond_0
    :goto_0
    return v2

    .line 4472
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_2

    .line 4473
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4476
    :cond_2
    const/4 v0, 0x0

    .line 4478
    .local v0, changed:Z
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_8

    .line 4483
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4485
    .local v1, curs:I
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4487
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4495
    :cond_3
    if-gez v1, :cond_4

    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x50

    if-ne v4, v5, :cond_4

    .line 4497
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4500
    :cond_4
    if-ltz v1, :cond_5

    .line 4501
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 4510
    .end local v1           #curs:I
    :cond_5
    :goto_1
    iget-boolean v4, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-eqz v4, :cond_6

    .line 4511
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 4512
    iput-boolean v3, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 4518
    :cond_6
    instance-of v4, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4519
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    .line 4522
    :cond_7
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4523
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 4504
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 6159
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 3040
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_1

    .line 3041
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3087
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 3045
    check-cast v3, Landroid/widget/TextView$SavedState;

    .line 3046
    .local v3, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3049
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 3050
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3053
    :cond_2
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_5

    .line 3054
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_5

    .line 3055
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3057
    .local v1, len:I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_3

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_6

    .line 3058
    :cond_3
    const-string v2, ""

    .line 3060
    .local v2, restored:Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 3061
    const-string v2, "(restored) "

    .line 3064
    :cond_4
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    .end local v1           #len:I
    .end local v2           #restored:Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 3079
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 3081
    .local v0, error:Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3068
    .end local v0           #error:Ljava/lang/CharSequence;
    .restart local v1       #len:I
    :cond_6
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3071
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_5

    .line 3072
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 2969
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2972
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2973
    .local v5, save:Z
    const/4 v8, 0x0

    .line 2974
    .local v8, start:I
    const/4 v2, 0x0

    .line 2976
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    .line 2977
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 2978
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2979
    if-gez v8, :cond_0

    if-ltz v2, :cond_1

    .line 2981
    :cond_0
    const/4 v5, 0x1

    .line 2985
    :cond_1
    if-eqz v5, :cond_5

    .line 2986
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2988
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 2989
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 2991
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_4

    .line 3000
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3002
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 3003
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3002
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3006
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 3007
    iget-object v10, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v6, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3009
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 3014
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ltz v8, :cond_3

    if-ltz v2, :cond_3

    .line 3015
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 3018
    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 3023
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_2
    return-object v7

    .line 3011
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_4
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_5
    move-object v7, v9

    .line 3023
    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"
    .parameter "oldHoriz"
    .parameter "oldVert"

    .prologue
    .line 9654
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 9655
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-eqz v0, :cond_0

    .line 9656
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->onScrollChanged()V

    .line 9658
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 7645
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 7646
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 2
    .parameter "alpha"

    .prologue
    .line 4723
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 4724
    iput p1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4725
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4726
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_5

    .line 4727
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4728
    :cond_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4729
    :cond_1
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4730
    :cond_2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4731
    :cond_3
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4732
    :cond_4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4734
    :cond_5
    const/4 v1, 0x1

    .line 4738
    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    :goto_0
    return v1

    .line 4737
    :cond_6
    const/16 v1, 0xff

    iput v1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    .line 4738
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 8186
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 8189
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8194
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8195
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "lengthBefore"
    .parameter "lengthAfter"

    .prologue
    .line 7635
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9289
    const/4 v1, 0x0

    .line 9290
    .local v1, min:I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9292
    .local v0, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9293
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9294
    .local v3, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9296
    .local v2, selEnd:I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9297
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9299
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_0
    iput-boolean v5, p0, Landroid/widget/TextView;->mInMoreMenuPressed:Z

    .line 9301
    sparse-switch p1, :sswitch_data_0

    move v4, v5

    .line 9328
    :goto_0
    return v4

    .line 9305
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    goto :goto_0

    .line 9309
    :sswitch_1
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->paste(II)V

    goto :goto_0

    .line 9313
    :sswitch_2
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9314
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9315
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_0

    .line 9319
    :sswitch_3
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9320
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_0

    .line 9324
    :sswitch_4
    iput-boolean v4, p0, Landroid/widget/TextView;->mInMoreMenuPressed:Z

    move v4, v5

    .line 9325
    goto :goto_0

    .line 9301
    :sswitch_data_0
    .sparse-switch
        #id@selectAll#t -> :sswitch_0
        #id@cut#t -> :sswitch_2
        #id@copy#t -> :sswitch_3
        #id@paste#t -> :sswitch_1
        #id@overflow_menu_presenter#t -> :sswitch_4
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 8405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8407
    .local v0, action:I
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8408
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8411
    :cond_0
    if-nez v0, :cond_1

    .line 8412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    .line 8413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    .line 8417
    iput-boolean v9, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 8418
    iput-boolean v9, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    .line 8421
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 8428
    .local v5, superResult:Z
    iget-boolean v7, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    if-eqz v7, :cond_3

    if-ne v0, v8, :cond_3

    .line 8429
    iput-boolean v9, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 8489
    .end local v5           #superResult:Z
    :cond_2
    :goto_0
    return v5

    .line 8433
    .restart local v5       #superResult:Z
    :cond_3
    if-ne v0, v8, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->shouldIgnoreActionUpEvent()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_c

    move v6, v8

    .line 8436
    .local v6, touchIsFinished:Z
    :goto_1
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_2

    .line 8438
    const/4 v1, 0x0

    .line 8440
    .local v1, handled:Z
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_5

    .line 8441
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v10, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 8444
    :cond_5
    if-eqz v6, :cond_6

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_6

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v7, :cond_6

    .line 8448
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 8451
    .local v3, links:[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-eqz v7, :cond_6

    .line 8452
    aget-object v7, v3, v9

    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 8453
    const/4 v1, 0x1

    .line 8457
    .end local v3           #links:[Landroid/text/style/ClickableSpan;
    :cond_6
    if-eqz v6, :cond_b

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v7, :cond_b

    .line 8459
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 8460
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 8461
    iget-boolean v7, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v7, :cond_8

    .line 8462
    if-eqz v2, :cond_d

    invoke-virtual {v2, p0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v8

    :goto_2
    or-int/2addr v1, v7

    .line 8465
    :cond_8
    iget-boolean v7, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v7

    if-eqz v7, :cond_e

    move v4, v8

    .line 8466
    .local v4, selectAllGotFocus:Z
    :goto_3
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8467
    if-nez v4, :cond_a

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 8468
    iget-object v7, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v7, :cond_9

    .line 8470
    iget-object v7, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v7}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 8472
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v7

    if-nez v7, :cond_a

    .line 8473
    invoke-direct {p0}, Landroid/widget/TextView;->isCursorInsideEasyCorrectionSpan()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 8474
    invoke-virtual {p0}, Landroid/widget/TextView;->showSuggestions()V

    .line 8481
    :cond_a
    :goto_4
    const/4 v1, 0x1

    .line 8484
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #selectAllGotFocus:Z
    :cond_b
    if-eqz v1, :cond_2

    move v5, v8

    .line 8485
    goto/16 :goto_0

    .end local v1           #handled:Z
    .end local v6           #touchIsFinished:Z
    :cond_c
    move v6, v9

    .line 8433
    goto/16 :goto_1

    .restart local v1       #handled:Z
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v6       #touchIsFinished:Z
    :cond_d
    move v7, v9

    .line 8462
    goto :goto_2

    :cond_e
    move v4, v9

    .line 8465
    goto :goto_3

    .line 8475
    .restart local v4       #selectAllGotFocus:Z
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 8476
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView$InsertionPointCursorController;->show()V

    goto :goto_4
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 8623
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8625
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8626
    const/4 v0, 0x1

    .line 8630
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 8371
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8372
    if-eqz p2, :cond_0

    .line 8373
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 8375
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 8332
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 8334
    if-eqz p1, :cond_1

    .line 8335
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    .line 8336
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 8337
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 8354
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8355
    iput-boolean v1, p0, Landroid/widget/TextView;->mInMoreMenuPressed:Z

    .line 8356
    return-void

    .line 8340
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_2

    .line 8341
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 8344
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 8345
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_3

    .line 8346
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 8350
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllersBaidu()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 9427
    const/4 v2, 0x0

    .line 9428
    .local v2, handled:Z
    const/4 v7, 0x1

    .line 9430
    .local v7, vibrate:Z
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9431
    iput-boolean v11, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 9432
    const/4 v2, 0x1

    .line 9434
    :cond_0
    iget-object v8, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "search_text"

    invoke-static {v8, v9}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 9436
    if-nez v2, :cond_1

    iget v8, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v9, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-direct {p0, v8, v9}, Landroid/widget/TextView;->isPositionOnText(FF)Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v8, :cond_1

    .line 9438
    iget v8, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v9, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    .line 9439
    .local v4, offset:I
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9440
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9441
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$InsertionPointCursorController;->showWithActionPopup()V

    .line 9442
    const/4 v2, 0x1

    .line 9443
    const/4 v7, 0x0

    .line 9446
    .end local v4           #offset:I
    :cond_1
    if-nez v2, :cond_2

    iget-object v8, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_2

    .line 9447
    invoke-direct {p0}, Landroid/widget/TextView;->touchPositionIsInSelection()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 9449
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 9450
    .local v6, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 9451
    .local v1, end:I
    invoke-direct {p0, v6, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 9452
    .local v5, selectedText:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    invoke-static {v8, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 9453
    .local v0, data:Landroid/content/ClipData;
    new-instance v3, Landroid/widget/TextView$DragLocalState;

    invoke-direct {v3, p0, v6, v1}, Landroid/widget/TextView$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 9454
    .local v3, localState:Landroid/widget/TextView$DragLocalState;
    invoke-direct {p0, v5}, Landroid/widget/TextView;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v8

    invoke-virtual {p0, v0, v8, v3, v10}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 9455
    invoke-direct {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9461
    .end local v0           #data:Landroid/content/ClipData;
    .end local v1           #end:I
    .end local v3           #localState:Landroid/widget/TextView$DragLocalState;
    .end local v5           #selectedText:Ljava/lang/CharSequence;
    .end local v6           #start:I
    :goto_0
    const/4 v2, 0x1

    .line 9465
    :cond_2
    if-nez v2, :cond_3

    .line 9466
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v2

    move v7, v2

    .line 9469
    :cond_3
    if-eqz v7, :cond_4

    .line 9470
    invoke-virtual {p0, v10}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 9473
    :cond_4
    if-eqz v2, :cond_5

    .line 9474
    iput-boolean v11, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    .line 9477
    :cond_5
    return v2

    .line 9457
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 9458
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWordBaidu()Z

    .line 9459
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    goto :goto_0
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "spannable"

    .prologue
    .line 3027
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 3029
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3030
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 3031
    .local v0, flags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    .line 3033
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3029
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3036
    .end local v0           #flags:I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"

    .prologue
    .line 10248
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 10250
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 10251
    check-cast v1, Landroid/text/Spannable;

    .line 10257
    .local v1, spannable:Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 10258
    .local v2, spans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 10259
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 10258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10253
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10254
    .restart local v1       #spannable:Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 10262
    .end local v1           #spannable:Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 7671
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 7672
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 7674
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 7675
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7678
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 12378
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 12379
    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 5829
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5830
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_2

    .line 5831
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5832
    .local v6, contentChanged:Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 5833
    :cond_0
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5834
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 5835
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5836
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 5837
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 5838
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 5842
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 5843
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5845
    :cond_1
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5851
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 5853
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5854
    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5855
    iput v9, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 5856
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5857
    const/4 v0, 0x1

    .line 5863
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public resetErrorChangedFlag()V
    .locals 1

    .prologue
    .line 5577
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 5578
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    .line 12353
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    .line 12354
    return-void
.end method

.method protected resetResolvedLayoutDirection()V
    .locals 2

    .prologue
    .line 6199
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6201
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_START:Landroid/widget/TextView$TextAlign;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_END:Landroid/widget/TextView$TextAlign;

    if-ne v0, v1, :cond_1

    .line 6204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 6206
    :cond_1
    return-void
.end method

.method protected resolveDrawables()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 12303
    iget-boolean v1, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    if-eqz v1, :cond_1

    .line 12350
    :cond_0
    :goto_0
    return-void

    .line 12307
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_0

    .line 12311
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 12312
    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_0

    .line 12316
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 12317
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 12335
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 12336
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 12338
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 12339
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 12341
    :cond_3
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 12342
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 12344
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 12345
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 12349
    :cond_4
    :goto_1
    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_0

    .line 12319
    :pswitch_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 12320
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 12322
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 12323
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 12325
    :cond_5
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 12326
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 12328
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 12329
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_1

    .line 12317
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method protected resolveTextDirection()V
    .locals 4

    .prologue
    .line 12263
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12264
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 12292
    :goto_0
    return-void

    .line 12269
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 12272
    .local v0, defaultIsRtl:Z
    :goto_1
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 12275
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedTextDirection()I

    move-result v1

    .line 12276
    .local v1, textDir:I
    packed-switch v1, :pswitch_data_0

    .line 12279
    if-eqz v0, :cond_2

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_2
    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 12269
    .end local v0           #defaultIsRtl:Z
    .end local v1           #textDir:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 12279
    .restart local v0       #defaultIsRtl:Z
    .restart local v1       #textDir:I
    :cond_2
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 12283
    :pswitch_0
    sget-object v2, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 12286
    :pswitch_1
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 12289
    :pswitch_2
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 12276
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 9231
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    .line 9235
    :goto_0
    return-void

    .line 9234
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 9253
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 9255
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9256
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 9257
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 9258
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 9259
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9260
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 7737
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 7738
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7739
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7740
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7741
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 7740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7744
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 7716
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 7717
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7718
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7719
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7720
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 7719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7724
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p4

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    .line 7729
    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 7730
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 2
    .parameter "allCaps"

    .prologue
    .line 7281
    if-eqz p1, :cond_0

    .line 7282
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7286
    :goto_0
    return-void

    .line 7284
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2369
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 2370
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 1
    .parameter "pad"

    .prologue
    .line 2056
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2057
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 2058
    if-eqz v0, :cond_0

    .line 2059
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 2068
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2069
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2070
    return-void

    .line 2062
    :cond_1
    if-nez v0, :cond_2

    .line 2063
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2065
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1685
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1687
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 1690
    .local v2, drawables:Z
    :goto_0
    if-nez v2, :cond_8

    .line 1692
    if-eqz v1, :cond_1

    .line 1693
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    .line 1694
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1783
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1784
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1785
    return-void

    .end local v2           #drawables:Z
    :cond_2
    move v2, v4

    .line 1687
    goto :goto_0

    .line 1698
    .restart local v2       #drawables:Z
    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1699
    :cond_4
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1700
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1701
    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1702
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1703
    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1704
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1705
    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1706
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1707
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1708
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1709
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 1713
    :cond_8
    if-nez v1, :cond_9

    .line 1714
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1717
    :cond_9
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    .line 1718
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1720
    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1722
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 1723
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1725
    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1727
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    .line 1728
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1730
    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1732
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 1733
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1735
    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1737
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1740
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1742
    .local v3, state:[I
    if-eqz p1, :cond_e

    .line 1743
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1744
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1745
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1746
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1747
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1752
    :goto_2
    if-eqz p3, :cond_f

    .line 1753
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1754
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1755
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1756
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1757
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1762
    :goto_3
    if-eqz p2, :cond_10

    .line 1763
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1764
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1765
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1766
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1767
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1772
    :goto_4
    if-eqz p4, :cond_11

    .line 1773
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1774
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1775
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1776
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1777
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 1749
    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    .line 1759
    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    .line 1769
    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 1779
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1855
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1857
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 1860
    .local v2, drawables:Z
    :goto_0
    if-nez v2, :cond_8

    .line 1862
    if-eqz v1, :cond_1

    .line 1863
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    .line 1864
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1953
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1954
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1955
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1956
    return-void

    .end local v2           #drawables:Z
    :cond_2
    move v2, v4

    .line 1857
    goto :goto_0

    .line 1868
    .restart local v2       #drawables:Z
    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1869
    :cond_4
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1870
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1871
    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1872
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1873
    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1874
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1875
    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1876
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1877
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1878
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1879
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 1883
    :cond_8
    if-nez v1, :cond_9

    .line 1884
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1887
    :cond_9
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    .line 1888
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1890
    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1892
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 1893
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1895
    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1897
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    .line 1898
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1900
    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1902
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 1903
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1905
    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1907
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1910
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1912
    .local v3, state:[I
    if-eqz p1, :cond_e

    .line 1913
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1914
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1915
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1916
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1917
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1922
    :goto_2
    if-eqz p3, :cond_f

    .line 1923
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1924
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1925
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1926
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1927
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1932
    :goto_3
    if-eqz p2, :cond_10

    .line 1933
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1934
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1935
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1936
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1937
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1942
    :goto_4
    if-eqz p4, :cond_11

    .line 1943
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1944
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1945
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1946
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1947
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 1919
    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    .line 1929
    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    .line 1939
    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 1949
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 1978
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 1979
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1980
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1985
    return-void

    :cond_1
    move-object v4, v1

    .line 1980
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 2003
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2004
    if-eqz p1, :cond_0

    .line 2005
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2007
    :cond_0
    if-eqz p3, :cond_1

    .line 2008
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2010
    :cond_1
    if-eqz p2, :cond_2

    .line 2011
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2013
    :cond_2
    if-eqz p4, :cond_3

    .line 2014
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2016
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2017
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 1804
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1805
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1809
    return-void

    :cond_1
    move-object v4, v1

    .line 1805
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1825
    if-eqz p1, :cond_0

    .line 1826
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1828
    :cond_0
    if-eqz p3, :cond_1

    .line 1829
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1831
    :cond_1
    if-eqz p2, :cond_2

    .line 1832
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1834
    :cond_2
    if-eqz p4, :cond_3

    .line 1835
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1837
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1838
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 12394
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12395
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7408
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    .line 7409
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 7410
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7412
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7415
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 7417
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0
    .parameter "actionModeCallback"

    .prologue
    .line 10336
    iput-object p1, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 10337
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 3125
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 3126
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3127
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 7356
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 7357
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 7359
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7360
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7361
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7362
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7365
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2775
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2776
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2778
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2779
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2780
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1207
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1211
    :cond_0
    if-nez p1, :cond_1

    .line 1213
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1214
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1218
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1219
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1220
    if-eqz p1, :cond_2

    .line 1222
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1223
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1227
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3946
    if-nez p1, :cond_0

    .line 3947
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 3955
    :goto_0
    return-void

    .line 3949
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #drawable@indicator_input_error#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3952
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3953
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 3967
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3969
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 3970
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 3971
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3972
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2

    .line 3973
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3976
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3988
    :goto_0
    if-nez p1, :cond_3

    .line 3989
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_1

    .line 3990
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3991
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3994
    :cond_0
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 4001
    :cond_1
    :goto_1
    return-void

    .line 3980
    :pswitch_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3985
    :cond_2
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3997
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3998
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_1

    .line 3973
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 5885
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 5886
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 5887
    if-nez v1, :cond_3

    .line 5888
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5907
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 5908
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 5909
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5910
    .local v4, start:I
    if-gez v4, :cond_7

    const/4 v4, 0x0

    .line 5912
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5913
    .local v2, end:I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 5915
    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5918
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    .line 5919
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 5923
    :goto_3
    return-void

    .line 5889
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_4

    .line 5890
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 5891
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 5893
    :cond_4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 5894
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5895
    .restart local v4       #start:I
    if-le v4, v0, :cond_5

    move v4, v0

    .line 5896
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5897
    .restart local v2       #end:I
    if-le v2, v0, :cond_6

    move v2, v0

    .line 5898
    :cond_6
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 5899
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 5911
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_7
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    .line 5914
    .restart local v2       #end:I
    :cond_8
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    .line 5921
    :cond_9
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 5929
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    .line 5930
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5935
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 5936
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .parameter "filters"

    .prologue
    .line 4187
    if-nez p1, :cond_0

    .line 4188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4191
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 4193
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 4194
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4196
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 4161
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 4162
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 4163
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 4164
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 4168
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4170
    return v6
.end method

.method public setFreezesText(Z)V
    .locals 0
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3104
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 3105
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .parameter "gravity"

    .prologue
    const v4, 0x800007

    .line 2513
    and-int v0, p1, v4

    if-nez v0, :cond_0

    .line 2514
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 2516
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 2517
    or-int/lit8 p1, p1, 0x30

    .line 2520
    :cond_1
    const/4 v7, 0x0

    .line 2522
    .local v7, newLayout:Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    .line 2524
    const/4 v7, 0x1

    .line 2527
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 2528
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2529
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 2532
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2534
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 2536
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2537
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .line 2539
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2543
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_4
    return-void

    .line 2537
    .restart local v1       #want:I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2705
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2706
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2708
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2709
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2710
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2327
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 2328
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 2329
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2331
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3521
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3522
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3502
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 3504
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3505
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3508
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3509
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3511
    :cond_1
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2442
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2443
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2444
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 2452
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2453
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2454
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .parameter "whether"

    .prologue
    .line 2588
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    .line 2589
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2591
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2592
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2593
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2594
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2597
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3735
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3736
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3738
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3739
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3740
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 3707
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3708
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3710
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3711
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .parameter "includepad"

    .prologue
    .line 6520
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 6521
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6523
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 6524
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6525
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6526
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6529
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3899
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3900
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3901
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3902
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 3903
    return-void
.end method

.method public setInputType(I)V
    .locals 12
    .parameter "type"

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3556
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 3557
    .local v5, wasPassword:Z
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 3558
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 3559
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 3560
    .local v2, isPassword:Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 3561
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 3562
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_6

    .line 3563
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3564
    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3578
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    .line 3582
    .local v4, singleLine:Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    .line 3585
    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 3588
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3589
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 3592
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3593
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3594
    :cond_5
    return-void

    .line 3565
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #singleLine:Z
    :cond_6
    if-eqz v3, :cond_8

    .line 3566
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_7

    .line 3567
    const/4 v0, 0x1

    .line 3569
    :cond_7
    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_0

    .line 3570
    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    .line 3572
    :cond_9
    invoke-direct {p0, v10, v10}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3573
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 3574
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    .line 3578
    goto :goto_1
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1355
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1357
    if-eqz p1, :cond_1

    .line 1359
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1370
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1371
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1372
    :cond_0
    return-void

    .line 1360
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 1361
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0

    .line 1367
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_1
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2807
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2808
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2809
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2811
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 2812
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2813
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2814
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2817
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2686
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2687
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2689
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2690
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2691
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2481
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2482
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2483
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 2491
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2492
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2493
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2382
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 2383
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .parameter "marqueeLimit"

    .prologue
    .line 7374
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 7375
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2747
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2748
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2750
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2751
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2752
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2669
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2670
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2672
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2673
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2674
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2652
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2653
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2655
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2656
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2657
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2761
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2762
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2764
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2765
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2766
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2719
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2720
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2722
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2723
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2724
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2636
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2637
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2639
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2640
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2641
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2620
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2621
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2623
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2624
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2625
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2733
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2734
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2736
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2737
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2738
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .parameter "movement"

    .prologue
    .line 1402
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1404
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1410
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1411
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3773
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3774
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3776
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3777
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2082
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 2086
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2090
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2091
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2092
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2570
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2571
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2573
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2574
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2575
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2576
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2579
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3871
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3872
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 3873
    return-void
.end method

.method public setRawInputType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3641
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3642
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 8634
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 8635
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7394
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 7396
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 7397
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7399
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    .line 8390
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 8392
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 8394
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 8395
    if-eqz p1, :cond_1

    .line 8396
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8401
    :cond_0
    :goto_0
    return-void

    .line 8398
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 2343
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 2345
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 2346
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 2347
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 2349
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2350
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 7265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 7266
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7302
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 7303
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 7304
    return-void
.end method

.method public final setSoftInputShownOnFocus(Z)V
    .locals 0
    .parameter "show"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2406
    iput-boolean p1, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    .line 2407
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .parameter "span"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 12386
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 12387
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 3133
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 3134
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3135
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3486
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3487
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 3490
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3491
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3150
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3151
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter "text"
    .parameter "type"

    .prologue
    .line 3175
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3177
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 3178
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 3180
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 3341
    const/4 v0, 0x0

    .line 3343
    .local v0, oldlen:I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 3344
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3352
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 3353
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3354
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3359
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 3360
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 3365
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3366
    return-void

    .line 3356
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 3362
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2110
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2118
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2119
    .local v1, color:I
    if-eqz v1, :cond_0

    .line 2120
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 2123
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2125
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 2126
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2129
    :cond_1
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 2131
    .local v4, ts:I
    if-eqz v4, :cond_2

    .line 2132
    int-to-float v6, v4

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2135
    :cond_2
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2137
    if-eqz v2, :cond_3

    .line 2138
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 2141
    :cond_3
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2143
    if-eqz v2, :cond_4

    .line 2144
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 2149
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2151
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2154
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 2156
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2158
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2161
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2162
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2284
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2285
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2286
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 2294
    if-nez p1, :cond_0

    .line 2295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2298
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2299
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2300
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .parameter "selectable"

    .prologue
    .line 4775
    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-ne v0, p1, :cond_0

    .line 4791
    :goto_0
    return-void

    .line 4777
    :cond_0
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    .line 4779
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 4780
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4781
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4782
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 4786
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4787
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_2

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4790
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    goto :goto_0

    .line 4786
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4787
    :cond_2
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_2
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3163
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3164
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 3469
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 3470
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3471
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3473
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3475
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 3476
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 3477
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3482
    :cond_1
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2234
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 2236
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2238
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2239
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2240
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2241
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2244
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2182
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2183
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 2195
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2198
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 2199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2203
    .local v1, r:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2205
    return-void

    .line 2201
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 1442
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_0

    .line 1464
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_1

    .line 1448
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 1449
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1453
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1455
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 1456
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 1457
    .local v0, method2:Landroid/text/method/TransformationMethod2;
    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 1458
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 1463
    .end local v0           #method2:Landroid/text/method/TransformationMethod2;
    :goto_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local v0       #method2:Landroid/text/method/TransformationMethod2;
    :cond_2
    move v1, v2

    .line 1457
    goto :goto_1

    .line 1460
    .end local v0           #method2:Landroid/text/method/TransformationMethod2;
    :cond_3
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 2257
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2258
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2260
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2261
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2262
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2263
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2266
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1240
    if-lez p2, :cond_4

    .line 1241
    if-nez p1, :cond_1

    .line 1242
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1247
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1249
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 1250
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 1251
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1252
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1258
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 1244
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1249
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 1252
    goto :goto_2

    .line 1254
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1255
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1256
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2791
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2792
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2794
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2795
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2796
    return-void
.end method

.method public shouldIgnoreActionUpEvent()Z
    .locals 1

    .prologue
    .line 8618
    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    return v0
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 10266
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 10267
    new-instance v0, Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/TextView$SuggestionsPopupWindow;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    .line 10269
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 10270
    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->show()V

    .line 10271
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 7
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v6, 0x1

    .line 7779
    const/4 v4, 0x0

    .line 7780
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 7782
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 7784
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    .line 7785
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7786
    const/4 v4, 0x1

    .line 7787
    move v2, p4

    .line 7789
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7790
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 7793
    :cond_0
    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    .line 7794
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 7795
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 7796
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7800
    :cond_2
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_5

    .line 7801
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7802
    const/4 v4, 0x1

    .line 7803
    move v3, p4

    .line 7805
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    .line 7806
    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 7809
    :cond_3
    if-gez p3, :cond_4

    if-ltz p4, :cond_5

    .line 7810
    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 7811
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 7815
    .end local v0           #end:I
    :cond_5
    if-eqz v4, :cond_8

    .line 7816
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_8

    .line 7817
    if-gez v3, :cond_6

    .line 7818
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 7820
    :cond_6
    if-gez v2, :cond_7

    .line 7821
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 7823
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 7827
    :cond_8
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_9

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_b

    .line 7828
    :cond_9
    if-eqz v1, :cond_a

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_14

    .line 7829
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7830
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7831
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 7837
    :cond_b
    :goto_0
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 7838
    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7839
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 7840
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 7843
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 7844
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_15

    .line 7845
    :cond_d
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 7852
    :cond_e
    :goto_1
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 7855
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 7856
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_16

    .line 7857
    if-ltz p3, :cond_10

    .line 7858
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 7859
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 7861
    :cond_f
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 7862
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 7865
    :cond_10
    if-ltz p4, :cond_12

    .line 7866
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 7867
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 7869
    :cond_11
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 7870
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 7882
    :cond_12
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_13

    .line 7883
    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->removeSpellCheckSpan(Landroid/text/style/SpellCheckSpan;)V

    .line 7885
    :cond_13
    return-void

    .line 7833
    .restart local p2
    :cond_14
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0

    .line 7847
    :cond_15
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_1

    .line 7877
    :cond_16
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_2
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 6116
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6117
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6119
    .local v0, curs:I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 6120
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6123
    :cond_1
    if-ltz v0, :cond_2

    .line 6124
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6125
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6126
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 6129
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6130
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter "who"

    .prologue
    .line 4620
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 4621
    .local v0, verified:Z
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 4622
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4626
    :goto_0
    return v1

    .line 4622
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 4626
    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter "imm"

    .prologue
    .line 12360
    if-eqz p1, :cond_0

    .line 12361
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 12363
    :cond_0
    return-void
.end method
