.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final PROTOCOL_YILIAO:I = 0x64

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6049
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6143
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6147
    .end local p2
    :goto_0
    return-object p2

    .line 6146
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6147
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getProtocolLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6119
    sparse-switch p0, :sswitch_data_0

    .line 6132
    const v0, 0x10402c5

    :goto_0
    return v0

    .line 6120
    :sswitch_0
    const v0, 0x10402c6

    goto :goto_0

    .line 6121
    :sswitch_1
    const v0, 0x10402c7

    goto :goto_0

    .line 6122
    :sswitch_2
    const v0, 0x10402c8

    goto :goto_0

    .line 6123
    :sswitch_3
    const v0, 0x10402c9

    goto :goto_0

    .line 6124
    :sswitch_4
    const v0, 0x10402ca

    goto :goto_0

    .line 6125
    :sswitch_5
    const v0, 0x10402cb

    goto :goto_0

    .line 6126
    :sswitch_6
    const v0, 0x10402cc

    goto :goto_0

    .line 6127
    :sswitch_7
    const v0, 0x10402cd

    goto :goto_0

    .line 6128
    :sswitch_8
    const v0, 0x10402ce

    goto :goto_0

    .line 6130
    :sswitch_9
    const/high16 v0, 0x404

    goto :goto_0

    .line 6119
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x64 -> :sswitch_9
    .end sparse-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6106
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6110
    .end local p2
    :goto_0
    return-object p2

    .line 6109
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6110
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6091
    packed-switch p0, :pswitch_data_0

    .line 6095
    const v0, 0x10402c1

    :goto_0
    return v0

    .line 6092
    :pswitch_0
    const v0, 0x10402c2

    goto :goto_0

    .line 6093
    :pswitch_1
    const v0, 0x10402c3

    goto :goto_0

    .line 6094
    :pswitch_2
    const v0, 0x10402c4

    goto :goto_0

    .line 6091
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
