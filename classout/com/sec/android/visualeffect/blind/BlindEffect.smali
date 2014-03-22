.class public Lcom/sec/android/visualeffect/blind/BlindEffect;
.super Landroid/widget/FrameLayout;
.source "BlindEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/IEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final DOWN_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final TOTAL_COLUMN_LANDSCAPE:I

.field private final TOTAL_COLUMN_PORTRAIT:I

.field private final UP_ANIMATION_DURATION:I

.field private animationValue:F

.field private bitmapLandscape:Landroid/graphics/Bitmap;

.field private bitmapPortrait:Landroid/graphics/Bitmap;

.field private blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

.field private blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

.field private cm:Landroid/graphics/ColorMatrix;

.field private currentX:F

.field private currentY:F

.field private dm:Landroid/util/DisplayMetrics;

.field private downAnimator:Landroid/animation/ValueAnimator;

.field private isInitialized:Z

.field private isLandscape:Z

.field private lastX:F

.field private lastY:F

.field private layoutLandscape:Landroid/widget/FrameLayout;

.field private layoutPortrait:Landroid/widget/FrameLayout;

.field private light:Landroid/graphics/Bitmap;

.field private lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

.field private longWidth:I

.field private mContext:Landroid/content/Context;

.field private moveAnimator:Landroid/animation/ValueAnimator;

.field private point2X:F

.field private point2Y:F

.field private pointX:F

.field private pointY:F

.field private pushAnimationMax:F

.field private pushAnimationMin:F

.field private shortWidth:I

.field private stageHeight:I

.field private stageWidth:I

.field private totalColumn:I

.field private upAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TAG:Ljava/lang/String;

    .line 25
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DBG:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    .line 43
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    .line 44
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    .line 45
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    .line 46
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    .line 53
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    .line 57
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DOWN_ANIMATION_DURATION:I

    .line 60
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UP_ANIMATION_DURATION:I

    .line 61
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_LANDSCAPE:I

    .line 62
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_PORTRAIT:I

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->constructor(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TAG:Ljava/lang/String;

    .line 25
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DBG:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    .line 43
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    .line 44
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    .line 45
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    .line 46
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    .line 53
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    .line 57
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DOWN_ANIMATION_DURATION:I

    .line 60
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UP_ANIMATION_DURATION:I

    .line 61
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_LANDSCAPE:I

    .line 62
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_PORTRAIT:I

    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->constructor(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TAG:Ljava/lang/String;

    .line 25
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DBG:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    .line 43
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    .line 44
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    .line 45
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    .line 46
    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    .line 53
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    .line 57
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DOWN_ANIMATION_DURATION:I

    .line 60
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UP_ANIMATION_DURATION:I

    .line 61
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_LANDSCAPE:I

    .line 62
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_PORTRAIT:I

    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->constructor(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/blind/BlindEffect;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/visualeffect/blind/BlindEffect;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setScale(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/blind/BlindEffect;)Lcom/sec/android/visualeffect/blind/ImageViewBlended;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMax:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    return p1
.end method

.method static synthetic access$416(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .registers 3
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    return p1
.end method

.method static synthetic access$516(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .registers 3
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    return v0
.end method

.method static synthetic access$816(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .registers 3
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    return v0
.end method

.method private backgroundImageUpdate()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 307
    const-string v3, "BlindEffect"

    const-string v4, "backgroundImageUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_28

    .line 314
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v0, v3, v1

    .line 315
    .local v0, "blind":Lcom/sec/android/visualeffect/blind/Blind;
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindX()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-static {v3, v4, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 316
    .local v2, "pieceBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Lcom/sec/android/visualeffect/blind/Blind;->changeBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 320
    .end local v0    # "blind":Lcom/sec/android/visualeffect/blind/Blind;
    .end local v2    # "pieceBitmap":Landroid/graphics/Bitmap;
    :cond_28
    const/4 v1, 0x0

    :goto_29
    const/16 v3, 0x13

    if-ge v1, v3, :cond_47

    .line 321
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v0, v3, v1

    .line 322
    .restart local v0    # "blind":Lcom/sec/android/visualeffect/blind/Blind;
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindX()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-static {v3, v4, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    .restart local v2    # "pieceBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Lcom/sec/android/visualeffect/blind/Blind;->changeBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 326
    .end local v0    # "blind":Lcom/sec/android/visualeffect/blind/Blind;
    .end local v2    # "pieceBitmap":Landroid/graphics/Bitmap;
    :cond_47
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 327
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    iput-object v8, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    .line 329
    iput-object v8, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    .line 330
    return-void
.end method

.method private cancelAllAnimator()V
    .registers 3

    .prologue
    .line 433
    const-string v0, "BlindEffect"

    const-string v1, "cancelAllAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 437
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 440
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 441
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 442
    :cond_b
    return-void
.end method

.method private constructor(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string v0, "BlindEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    .line 83
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    .line 84
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    if-le v0, v1, :cond_2a

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    :goto_1d
    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    .line 85
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    if-le v0, v1, :cond_2d

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    :goto_27
    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    .line 86
    return-void

    .line 84
    :cond_2a
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    goto :goto_1d

    .line 85
    :cond_2d
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    goto :goto_27
.end method

.method private getBlindX(IZ)I
    .registers 7
    .param p1, "i"    # I
    .param p2, "isLandscape"    # Z

    .prologue
    .line 341
    if-eqz p2, :cond_11

    const/16 v0, 0x1e

    .line 342
    .local v0, "column":I
    :goto_4
    if-eqz p2, :cond_14

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    .line 343
    .local v1, "width":I
    :goto_8
    mul-int v3, p1, v1

    div-int/2addr v3, v0

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 344
    .local v2, "x":I
    return v2

    .line 341
    .end local v0    # "column":I
    .end local v1    # "width":I
    .end local v2    # "x":I
    :cond_11
    const/16 v0, 0x13

    goto :goto_4

    .line 342
    .restart local v0    # "column":I
    :cond_14
    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    goto :goto_8
.end method

.method private getDistance(FFI)F
    .registers 8
    .param p1, "dis"    # F
    .param p2, "point"    # F
    .param p3, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/blind/Blind;->getMidPoint()F

    move-result v1

    sub-float p1, v1, p2

    .line 246
    :goto_f
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v1, :cond_36

    const/high16 v0, 0x41200000

    .line 247
    .local v0, "brightRange":F
    :goto_15
    cmpg-float v1, p1, v3

    if-gez v1, :cond_1c

    const/high16 v1, -0x40800000

    mul-float/2addr p1, v1

    .line 249
    :cond_1c
    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float/2addr v1, p1

    const/high16 v2, 0x447a0000

    div-float p1, v1, v2

    .line 251
    cmpg-float v1, p1, v3

    if-gez v1, :cond_2a

    const/4 p1, 0x0

    .line 253
    :cond_2a
    return p1

    .line 245
    .end local v0    # "brightRange":F
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/blind/Blind;->getMidPoint()F

    move-result v1

    sub-float p1, v1, p2

    goto :goto_f

    .line 246
    :cond_36
    const/high16 v0, 0x40e00000

    goto :goto_15
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 101
    .local v2, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 102
    .local v0, "bitmapHeight":I
    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    .line 103
    .local v4, "ratio":F
    div-int v7, v2, v0

    int-to-float v1, v7

    .line 105
    .local v1, "bitmapRatio":F
    cmpl-float v7, v1, v4

    if-lez v7, :cond_25

    .line 107
    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    .line 108
    .local v6, "targetWidth":I
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v7, v9, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 114
    .end local v6    # "targetWidth":I
    .local v3, "finalBitmap":Landroid/graphics/Bitmap;
    :goto_1f
    const/4 v7, 0x1

    invoke-static {v3, p2, p3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 115
    return-object v3

    .line 111
    .end local v3    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_25
    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    .line 112
    .local v5, "targetHeight":I
    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v9, v7, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "finalBitmap":Landroid/graphics/Bitmap;
    goto :goto_1f
.end method

.method private playUpAnimator()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 399
    :goto_8
    return-void

    .line 394
    :cond_9
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 397
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMax:F

    .line 398
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8
.end method

.method private setAnimator()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 162
    new-array v0, v3, [F

    fill-array-data v0, :array_86

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    .line 163
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$1;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    new-array v0, v3, [F

    fill-array-data v0, :array_8e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    .line 175
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$2;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$3;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    new-array v0, v3, [F

    fill-array-data v0, :array_96

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    .line 204
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$4;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$4;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    return-void

    .line 162
    nop

    :array_86
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 174
    :array_8e
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 203
    :array_96
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private setBlind()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x1e

    const/16 v9, 0x13

    const/4 v8, 0x0

    .line 271
    new-array v6, v10, [Lcom/sec/android/visualeffect/blind/Blind;

    iput-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "blindX":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v10, :cond_3e

    .line 274
    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getBlindX(IZ)I

    move-result v4

    .line 275
    .local v4, "nextX":I
    sub-int v1, v4, v2

    .line 276
    .local v1, "blindWidth":I
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-static {v6, v2, v8, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 277
    .local v5, "pieceBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/sec/android/visualeffect/blind/Blind;

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v5, v2, v1}, Lcom/sec/android/visualeffect/blind/Blind;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    .line 278
    .local v0, "blind":Lcom/sec/android/visualeffect/blind/Blind;
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aput-object v0, v6, v3

    .line 279
    int-to-float v6, v2

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    .line 280
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-virtual {v6, v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 282
    move v2, v4

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 286
    .end local v0    # "blind":Lcom/sec/android/visualeffect/blind/Blind;
    .end local v1    # "blindWidth":I
    .end local v4    # "nextX":I
    .end local v5    # "pieceBitmap":Landroid/graphics/Bitmap;
    :cond_3e
    new-array v6, v9, [Lcom/sec/android/visualeffect/blind/Blind;

    iput-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    .line 287
    const/4 v2, 0x0

    .line 288
    const/4 v3, 0x0

    :goto_44
    if-ge v3, v9, :cond_75

    .line 289
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6, v8}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getBlindX(IZ)I

    move-result v4

    .line 290
    .restart local v4    # "nextX":I
    sub-int v1, v4, v2

    .line 291
    .restart local v1    # "blindWidth":I
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-static {v6, v2, v8, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 292
    .restart local v5    # "pieceBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/sec/android/visualeffect/blind/Blind;

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v5, v2, v1}, Lcom/sec/android/visualeffect/blind/Blind;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    .line 293
    .restart local v0    # "blind":Lcom/sec/android/visualeffect/blind/Blind;
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aput-object v0, v6, v3

    .line 294
    int-to-float v6, v2

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    .line 295
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 296
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-virtual {v6, v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 297
    move v2, v4

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 300
    .end local v0    # "blind":Lcom/sec/android/visualeffect/blind/Blind;
    .end local v1    # "blindWidth":I
    .end local v4    # "nextX":I
    .end local v5    # "pieceBitmap":Landroid/graphics/Bitmap;
    :cond_75
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    iput-object v11, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    .line 303
    iput-object v11, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    .line 304
    return-void
.end method

.method private setContrastScaleOnly(Landroid/graphics/ColorMatrix;F)V
    .registers 8
    .param p1, "cm"    # Landroid/graphics/ColorMatrix;
    .param p2, "contrast"    # F

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 257
    add-float v0, p2, v4

    .line 258
    .local v0, "scale":F
    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v3, v1, v2

    const/16 v2, 0xf

    aput v3, v1, v2

    const/16 v2, 0x10

    aput v3, v1, v2

    const/16 v2, 0x11

    aput v3, v1, v2

    const/16 v2, 0x12

    aput v4, v1, v2

    const/16 v2, 0x13

    aput v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 263
    return-void
.end method

.method private setLight()V
    .registers 5

    .prologue
    .line 333
    new-instance v0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/blind/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    .line 334
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    .line 335
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 338
    return-void
.end method

.method private setScale(I)V
    .registers 9
    .param p1, "i"    # I

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "distance":F
    const/4 v2, 0x0

    .line 224
    .local v2, "distance2":F
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    invoke-direct {p0, v1, v4, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getDistance(FFI)F

    move-result v1

    .line 226
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_16

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    invoke-direct {p0, v2, v4, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getDistance(FFI)F

    move-result v2

    .line 228
    :cond_16
    cmpl-float v4, v2, v1

    if-lez v4, :cond_1b

    move v1, v2

    .line 230
    :cond_1b
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_45

    .line 231
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 232
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 235
    :cond_45
    iget-boolean v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v4, :cond_77

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    .line 236
    .local v0, "blind":[Lcom/sec/android/visualeffect/blind/Blind;
    :goto_4b
    const/high16 v4, 0x3f800000

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    mul-float/2addr v5, v1

    add-float v3, v4, v5

    .line 237
    .local v3, "scale":F
    aget-object v4, v0, p1

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 238
    aget-object v4, v0, p1

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 239
    aget-object v4, v0, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 240
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->cm:Landroid/graphics/ColorMatrix;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    mul-float/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setContrastScaleOnly(Landroid/graphics/ColorMatrix;F)V

    .line 241
    aget-object v4, v0, p1

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->cm:Landroid/graphics/ColorMatrix;

    invoke-direct {v5, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 242
    return-void

    .line 235
    .end local v0    # "blind":[Lcom/sec/android/visualeffect/blind/Blind;
    .end local v3    # "scale":F
    :cond_77
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    goto :goto_4b
.end method


# virtual methods
.method public blindEffectInit()V
    .registers 3

    .prologue
    .line 124
    const-string v0, "BlindEffect"

    const-string v1, "blindEffectInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->cm:Landroid/graphics/ColorMatrix;

    .line 127
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    .line 128
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    .line 130
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->resetOrientation()V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setBlind()V

    .line 134
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setLight()V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setAnimator()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    .line 138
    return-void
.end method

.method public clearEffect()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    .line 408
    const-string v1, "BlindEffect"

    const-string v2, "clearEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    .line 411
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    if-eqz v1, :cond_4b

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2e

    .line 414
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 415
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 416
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 419
    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    const/16 v1, 0x13

    if-ge v0, v1, :cond_4b

    .line 420
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 421
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 422
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 425
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 428
    const-string v0, "BlindEffect"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    .line 430
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 354
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 357
    .local v3, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_38

    .line 358
    const-string v4, "BlindEffect"

    const-string v5, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    .line 360
    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    .line 361
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastX:F

    .line 362
    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastY:F

    .line 364
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    .line 365
    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    .line 366
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    .line 367
    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    .line 369
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    .line 370
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    iput v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    .line 371
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 372
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 389
    :cond_36
    :goto_36
    const/4 v4, 0x0

    return v4

    .line 374
    :cond_38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-nez v4, :cond_5c

    .line 376
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastX:F

    sub-float v0, v2, v4

    .line 377
    .local v0, "dX":F
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastY:F

    sub-float v1, v3, v4

    .line 379
    .local v1, "dY":F
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    .line 380
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    add-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    .line 381
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastX:F

    .line 382
    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastY:F

    goto :goto_36

    .line 384
    .end local v0    # "dX":F
    .end local v1    # "dY":F
    :cond_5c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_36

    .line 386
    :cond_6a
    const-string v4, "BlindEffect"

    const-string v5, "handleTouchEvent : ACTION_UP || ACTION_CANCEL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->playUpAnimator()V

    goto :goto_36
.end method

.method public resetOrientation()V
    .registers 8

    .prologue
    const/16 v2, 0x1e

    const/16 v3, 0x13

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    .line 144
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    .line 145
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    if-le v0, v4, :cond_69

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    .line 146
    const-string v0, "BlindEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetOrientation : isLandscape = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v0, :cond_6b

    move v0, v2

    :goto_56
    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    .line 150
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v0, :cond_6d

    .line 151
    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    .line 152
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_68
    return-void

    :cond_69
    move v0, v1

    .line 145
    goto :goto_1d

    :cond_6b
    move v0, v3

    .line 148
    goto :goto_56

    .line 155
    :cond_6d
    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    .line 156
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_68
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "backgroundImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundImage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    .line 92
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    .line 94
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    if-eqz v0, :cond_45

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->backgroundImageUpdate()V

    .line 95
    :cond_45
    return-void
.end method

.method public setLightImage(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "lightImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 119
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightImage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    .line 121
    return-void
.end method

.method public unlockEffect()V
    .registers 3

    .prologue
    .line 402
    const-string v0, "BlindEffect"

    const-string v1, "unlockEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->playUpAnimator()V

    .line 404
    return-void
.end method
