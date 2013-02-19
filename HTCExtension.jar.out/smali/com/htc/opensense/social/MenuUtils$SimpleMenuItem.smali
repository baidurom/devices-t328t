.class public final Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;
.super Ljava/lang/Object;
.source "MenuUtils.java"

# interfaces
.implements Landroid/view/MenuItem;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleMenuItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVOKE_SEND_BROADCAST:I = 0x2

.field public static final INVOKE_START_ACTIVITY:I = 0x0

.field public static final INVOKE_START_FRAGMENT:I = 0x3

.field public static final INVOKE_START_SERVICE:I = 0x1


# instance fields
.field public fragName:Ljava/lang/String;
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "item_fragment_name"
    .end annotation
.end field

.field public iconRes:I
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "item_icon_res"
    .end annotation
.end field

.field public intent:Landroid/content/Intent;
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "item_intent"
    .end annotation
.end field

.field public invokeMethod:I
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "item_invoke_method"
    .end annotation
.end field

.field public itemId:I
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "item_id"
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field public titleRes:I
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "item_title_res"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILandroid/content/Intent;)V
    .locals 0
    .parameter "itemId"
    .parameter "packageName"
    .parameter "titleRes"
    .parameter "iconRes"
    .parameter "invokeMethod"
    .parameter "intent"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->itemId:I

    .line 90
    iput-object p2, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->packageName:Ljava/lang/String;

    .line 91
    iput p3, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->titleRes:I

    .line 92
    iput p5, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->invokeMethod:I

    .line 93
    iput-object p6, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->intent:Landroid/content/Intent;

    .line 94
    iput p4, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->iconRes:I

    .line 95
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILandroid/content/Intent;)V
    .locals 7
    .parameter "itemId"
    .parameter "packageName"
    .parameter "titleRes"
    .parameter "invokeMethod"
    .parameter "intent"

    .prologue
    .line 83
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;-><init>(ILjava/lang/String;IIILandroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->itemId:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->packageName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->titleRes:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->invokeMethod:I

    .line 108
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->intent:Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->iconRes:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->fragName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .parameter "packageName"
    .parameter "fragName"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v5, 0x3

    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move v4, v1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;-><init>(ILjava/lang/String;IIILandroid/content/Intent;)V

    .line 99
    iput-object p2, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->fragName:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->fragName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->iconRes:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getInvokeMethod()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->invokeMethod:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->itemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->titleRes:I

    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 581
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 520
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFragmentName(Ljava/lang/String;)V
    .locals 0
    .parameter "fragName"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->fragName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIconRes(I)V
    .locals 0
    .parameter "iconRes"

    .prologue
    .line 226
    iput p1, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->iconRes:I

    .line 227
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInvokeMethod(I)V
    .locals 0
    .parameter "method"

    .prologue
    .line 210
    iput p1, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->invokeMethod:I

    .line 211
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "itemId"

    .prologue
    .line 173
    iput p1, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->itemId:I

    .line 174
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->packageName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 461
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 530
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "actionEnum"

    .prologue
    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 471
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleRes(I)V
    .locals 0
    .parameter "titleRes"

    .prologue
    .line 197
    iput p1, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->titleRes:I

    .line 198
    return-void
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->itemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->invokeMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense/social/MenuUtils$SimpleMenuItem;->fragName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return-void
.end method
