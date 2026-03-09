.class public final Lio/appium/android/apis/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DraggableDot:[I

.field public static final DraggableDot_anr:I = 0x2

.field public static final DraggableDot_legend:I = 0x1

.field public static final DraggableDot_radius:I = 0x0

.field public static final FragmentArguments:[I

.field public static final FragmentArguments_android_label:I = 0x0

.field public static final Gallery1:[I

.field public static final Gallery1_android_galleryItemBackground:I = 0x0

.field public static final LabelView:[I

.field public static final LabelView_text:I = 0x0

.field public static final LabelView_textColor:I = 0x1

.field public static final LabelView_textSize:I = 0x2

.field public static final TogglePrefAttrs:[I

.field public static final TogglePrefAttrs_android_preferenceLayoutChild:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2208
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/R$styleable;->DraggableDot:[I

    .line 2270
    new-array v0, v3, [I

    const v1, 0x1010001

    aput v1, v0, v2

    sput-object v0, Lio/appium/android/apis/R$styleable;->FragmentArguments:[I

    .line 2290
    new-array v0, v3, [I

    const v1, 0x101004c

    aput v1, v0, v2

    sput-object v0, Lio/appium/android/apis/R$styleable;->Gallery1:[I

    .line 2313
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lio/appium/android/apis/R$styleable;->LabelView:[I

    .line 2372
    new-array v0, v3, [I

    const v1, 0x1010094

    aput v1, v0, v2

    sput-object v0, Lio/appium/android/apis/R$styleable;->TogglePrefAttrs:[I

    return-void

    .line 2208
    nop

    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    .line 2313
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
