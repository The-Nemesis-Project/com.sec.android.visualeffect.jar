.class public Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
.super Landroid/widget/FrameLayout;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/IEffect;


# instance fields
.field private final BG_MOVE_RATIO:F

.field private final BG_PUSH_SCALE:F

.field private final BG_UNLOCK_SCALE:F

.field private CREATED_DOTS_AMOUNT_DOWN:I

.field private CREATED_DOTS_AMOUNT_MOVE:I

.field private final DBG:Z

.field private final PULL_ANIMATION_DURATION:I

.field private final PUSH_ANIMATION_DURATION:I

.field private final RECENT_INIT_SCALE:F

.field private final RECENT_MOVE_RATIO:F

.field private final SCREEN_ON_ANIMATION_DURATION:I

.field private final SCREEN_ON_WIDGET_SCALE:F

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_ANIMATION_DURATION:I

.field private final WIDGET_MOVE_RATIO:F

.field private final WIDGET_PUSH_SCALE:F

.field private final WIDGET_UNLOCK_SCALE:F

.field private animationValue:F

.field private centerX:F

.field private centerY:F

.field private currentX:F

.field private currentY:F

.field private gapX:F

.field private gapY:F

.field private isLayerSet:Z

.field private isUnlockFinished:Z

.field private isUnlocking:Z

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBgImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mRecentImageView:Landroid/widget/ImageView;

.field private mWidgetLayout:Landroid/widget/FrameLayout;

.field private moveAnimator:Landroid/animation/ValueAnimator;

.field private particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

.field private pullAnimator:Landroid/animation/ValueAnimator;

.field private pushAnimationMax:F

.field private pushAnimationMin:F

.field private pushAnimator:Landroid/animation/ValueAnimator;

.field private releaseGapX:F

.field private releaseGapY:F

.field private screenOnAnimation:Landroid/animation/ValueAnimator;

.field private screenOnAnimationValue:F

.field private stageHeight:F

.field private stageWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x2bc

    const/4 v3, 0x0

    const v2, 0x3dcccccd

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "ParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->DBG:Z

    .line 39
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMin:F

    .line 40
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->PUSH_ANIMATION_DURATION:I

    .line 41
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->PULL_ANIMATION_DURATION:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_ANIMATION_DURATION:I

    .line 43
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->UNLOCK_ANIMATION_DURATION:I

    .line 44
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_MOVE_RATIO:F

    .line 45
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_MOVE_RATIO:F

    .line 46
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->RECENT_MOVE_RATIO:F

    .line 47
    const v0, 0x3f333333

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->RECENT_INIT_SCALE:F

    .line 48
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_PUSH_SCALE:F

    .line 49
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_PUSH_SCALE:F

    .line 50
    const v0, 0x3fb33333

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_UNLOCK_SCALE:F

    .line 51
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_UNLOCK_SCALE:F

    .line 52
    const v0, 0x3fa66666

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_WIDGET_SCALE:F

    .line 53
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlockFinished:Z

    .line 61
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    .line 62
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    .line 63
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapX:F

    .line 64
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapY:F

    .line 65
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    .line 68
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    .line 72
    const-string v0, "ParticleEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleSpaceInit()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x2bc

    const/4 v3, 0x0

    const v2, 0x3dcccccd

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "ParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->DBG:Z

    .line 39
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMin:F

    .line 40
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->PUSH_ANIMATION_DURATION:I

    .line 41
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->PULL_ANIMATION_DURATION:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_ANIMATION_DURATION:I

    .line 43
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->UNLOCK_ANIMATION_DURATION:I

    .line 44
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_MOVE_RATIO:F

    .line 45
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_MOVE_RATIO:F

    .line 46
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->RECENT_MOVE_RATIO:F

    .line 47
    const v0, 0x3f333333

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->RECENT_INIT_SCALE:F

    .line 48
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_PUSH_SCALE:F

    .line 49
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_PUSH_SCALE:F

    .line 50
    const v0, 0x3fb33333

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_UNLOCK_SCALE:F

    .line 51
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_UNLOCK_SCALE:F

    .line 52
    const v0, 0x3fa66666

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_WIDGET_SCALE:F

    .line 53
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlockFinished:Z

    .line 61
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    .line 62
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    .line 63
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapX:F

    .line 64
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapY:F

    .line 65
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    .line 68
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    .line 86
    const-string v0, "ParticleEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleSpaceInit()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v4, 0x2bc

    const/4 v3, 0x0

    const v2, 0x3dcccccd

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string v0, "ParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->DBG:Z

    .line 39
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMin:F

    .line 40
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->PUSH_ANIMATION_DURATION:I

    .line 41
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->PULL_ANIMATION_DURATION:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_ANIMATION_DURATION:I

    .line 43
    iput v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->UNLOCK_ANIMATION_DURATION:I

    .line 44
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_MOVE_RATIO:F

    .line 45
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_MOVE_RATIO:F

    .line 46
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->RECENT_MOVE_RATIO:F

    .line 47
    const v0, 0x3f333333

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->RECENT_INIT_SCALE:F

    .line 48
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_PUSH_SCALE:F

    .line 49
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_PUSH_SCALE:F

    .line 50
    const v0, 0x3fb33333

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->WIDGET_UNLOCK_SCALE:F

    .line 51
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->BG_UNLOCK_SCALE:F

    .line 52
    const v0, 0x3fa66666

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_WIDGET_SCALE:F

    .line 53
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlockFinished:Z

    .line 61
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    .line 62
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    .line 63
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapX:F

    .line 64
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapY:F

    .line 65
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    .line 68
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    .line 79
    const-string v0, "ParticleEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleSpaceInit()V

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMin:F

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animateScreenOn()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->unlockFinished()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animateScale()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMax:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    return p1
.end method

.method static synthetic access$416(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F
    .registers 3
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapX:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    return p1
.end method

.method static synthetic access$616(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F
    .registers 3
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapY:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animatePosition()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    return v0
.end method

.method private animatePosition()V
    .registers 6

    .prologue
    const v4, 0x3e4ccccd

    const v3, 0x3dcccccd

    const v2, 0x3d4ccccd

    .line 202
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mRecentImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mRecentImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 208
    return-void
.end method

.method private animateScale()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000

    const v5, 0x3dcccccd

    .line 188
    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 189
    .local v2, "widgetScale":F
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 190
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 192
    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F

    mul-float/2addr v3, v5

    add-float v1, v6, v3

    .line 193
    .local v1, "bgScale":F
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 194
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 196
    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F

    mul-float/2addr v3, v5

    sub-float v0, v6, v3

    .line 197
    .local v0, "bgAlpha":F
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 198
    return-void
.end method

.method private animateScreenOn()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000

    .line 211
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 212
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 214
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    sub-float/2addr v1, v3

    const v2, 0x3e999998

    div-float/2addr v1, v2

    sub-float v0, v3, v1

    .line 215
    .local v0, "bgAlpha":F
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 216
    return-void
.end method

.method private cancelAllAnimator()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 227
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 219
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 221
    :cond_b
    return-void
.end method

.method private getColor(FF)I
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 301
    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_8

    .line 302
    const v0, 0xffffff

    .line 309
    :goto_7
    return v0

    .line 304
    :cond_8
    iget v5, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    div-float v3, p1, v5

    .line 305
    .local v3, "xRatio":F
    iget v5, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    div-float v4, p2, v5

    .line 306
    .local v4, "yRatio":F
    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 307
    .local v1, "pointX":I
    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 308
    .local v2, "pointY":I
    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 309
    .local v0, "color":I
    goto :goto_7
.end method

.method private particleSpaceInit()V
    .registers 6

    .prologue
    const/high16 v4, 0x40000000

    .line 119
    const-string v1, "ParticleEffect"

    const-string v2, "particleSpaceInit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 122
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    .line 123
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    .line 124
    const-string v1, "ParticleEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F

    .line 126
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F

    .line 128
    new-instance v1, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    .line 129
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setAnimator()V

    .line 132
    return-void
.end method

.method private setAnimator()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x2bc

    const/4 v3, 0x2

    .line 135
    new-array v0, v3, [F

    fill-array-data v0, :array_a0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimator:Landroid/animation/ValueAnimator;

    .line 136
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    new-array v0, v3, [F

    fill-array-data v0, :array_a8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pullAnimator:Landroid/animation/ValueAnimator;

    .line 147
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pullAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 149
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pullAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    new-array v0, v3, [F

    fill-array-data v0, :array_b0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    .line 161
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    new-array v0, v3, [F

    fill-array-data v0, :array_b8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    .line 175
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$4;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$4;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    return-void

    .line 135
    nop

    :array_a0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 146
    :array_a8
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 160
    :array_b0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 174
    :array_b8
    .array-data 4
        0x3fa66666
        0x3f800000
    .end array-data
.end method

.method private setViewProperties(Landroid/view/View;FFFFF)V
    .registers 7
    .param p1, "obj"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "alpha"    # F

    .prologue
    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 253
    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    .line 254
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleX(F)V

    .line 255
    invoke-virtual {p1, p5}, Landroid/view/View;->setScaleY(F)V

    .line 256
    invoke-virtual {p1, p6}, Landroid/view/View;->setAlpha(F)V

    .line 257
    return-void
.end method

.method private unlockFinished()V
    .registers 3

    .prologue
    .line 352
    const-string v0, "ParticleEffect"

    const-string v1, "unlockFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlockFinished:Z

    .line 355
    return-void
.end method


# virtual methods
.method public clearEffect()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const v9, 0x3f333333

    const/high16 v4, 0x3f800000

    const/4 v2, 0x0

    .line 231
    const-string v0, "ParticleEffect"

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    .line 233
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    .line 234
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    .line 235
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlockFinished:Z

    .line 236
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F

    .line 237
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    .line 238
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    .line 239
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapX:F

    .line 240
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapY:F

    .line 241
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->cancelAllAnimator()V

    .line 242
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setViewProperties(Landroid/view/View;FFFFF)V

    .line 243
    :cond_34
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setViewProperties(Landroid/view/View;FFFFF)V

    .line 244
    :cond_41
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mRecentImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4f

    iget-object v6, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mRecentImageView:Landroid/widget/ImageView;

    move-object v5, p0

    move v7, v2

    move v8, v2

    move v10, v9

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setViewProperties(Landroid/view/View;FFFFF)V

    .line 245
    :cond_4f
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 248
    const-string v0, "ParticleEffect"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 261
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    if-eqz v1, :cond_7

    .line 297
    :cond_6
    :goto_6
    return v5

    .line 262
    :cond_7
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlockFinished:Z

    if-eqz v1, :cond_15

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->clearEffect()V

    goto :goto_6

    .line 267
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    .line 269
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    invoke-direct {p0, v1, v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->getColor(FF)I

    move-result v0

    .line 271
    .local v0, "color":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_53

    .line 272
    const-string v1, "ParticleEffect"

    const-string v2, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->cancelAllAnimator()V

    .line 275
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMin:F

    .line 276
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 277
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 279
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->addDots(IFFI)V

    goto :goto_6

    .line 281
    :cond_53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_6c

    .line 283
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->addDots(IFFI)V

    goto :goto_6

    .line 285
    :cond_6c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_79

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 287
    :cond_79
    const-string v1, "ParticleEffect"

    const-string v2, "handleTouchEvent : ACTION_UP || ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->cancelAllAnimator()V

    .line 290
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    .line 291
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    .line 292
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapX:F

    .line 293
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapY:F

    .line 294
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMax:F

    .line 295
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_6
.end method

.method public screenOnAnimationStart()V
    .registers 3

    .prologue
    .line 109
    const-string v0, "ParticleEffect"

    const-string v1, "screenOnAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    if-eqz v0, :cond_11

    .line 111
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 116
    :goto_10
    return-void

    .line 113
    :cond_11
    const-string v0, "ParticleEffect"

    const-string v1, "isLayerSet = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "backgroundBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    const-string v0, "ParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundBitmap : Bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 94
    return-void
.end method

.method public setLayers(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .registers 7
    .param p1, "recentImageView"    # Landroid/widget/ImageView;
    .param p2, "bgImageView"    # Landroid/widget/ImageView;
    .param p3, "widgetLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 97
    const-string v0, "ParticleEffect"

    const-string v1, "setLayers : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "ParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    recentImageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "ParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    bgImageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "ParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    widgetLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mRecentImageView:Landroid/widget/ImageView;

    .line 102
    iput-object p2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    .line 103
    iput-object p3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->clearEffect()V

    .line 106
    return-void
.end method

.method public unlock()V
    .registers 9

    .prologue
    const v7, 0x3fb33333

    const v6, 0x3f99999a

    const/high16 v5, 0x3f800000

    const-wide/16 v3, 0x2bc

    const/4 v2, 0x0

    .line 314
    const-string v0, "ParticleEffect"

    const-string v1, "unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    if-eqz v0, :cond_17

    .line 349
    :goto_16
    return-void

    .line 316
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocking:Z

    .line 317
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->cancelAllAnimator()V

    .line 319
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->unlockDots()V

    .line 321
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mWidgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 326
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 331
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mRecentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$5;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$5;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_16
.end method
