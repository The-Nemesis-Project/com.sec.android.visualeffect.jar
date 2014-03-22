.class public Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackInterpolator"
.end annotation


# instance fields
.field private overshot:F

.field final synthetic this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

.field private type:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;


# direct methods
.method public constructor <init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;F)V
    .registers 4
    .param p2, "type"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;
    .param p3, "overshot"    # F

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->type:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    .line 1061
    iput p3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->overshot:F

    .line 1062
    return-void
.end method

.method private in(FF)F
    .registers 5
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    .line 1078
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_8

    .line 1079
    const p2, 0x3fd9cd60

    .line 1081
    :cond_8
    mul-float v0, p1, p1

    const/high16 v1, 0x3f800000

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method private inout(FF)F
    .registers 11
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    const/high16 v7, 0x3f000000

    const-wide v5, 0x3ff8666666666666L

    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f800000

    .line 1092
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_13

    .line 1093
    const p2, 0x3fd9cd60

    .line 1095
    :cond_13
    mul-float/2addr p1, v4

    .line 1096
    cmpg-float v0, p1, v3

    if-gez v0, :cond_24

    .line 1097
    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v7

    .line 1099
    :goto_23
    return v0

    :cond_24
    sub-float/2addr p1, v4

    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v7

    goto :goto_23
.end method

.method private out(FF)F
    .registers 6
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    const/high16 v2, 0x3f800000

    .line 1085
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    .line 1086
    const p2, 0x3fd9cd60

    .line 1088
    :cond_a
    sub-float/2addr p1, v2

    mul-float v0, p1, p1

    add-float v1, p2, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "t"    # F

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->type:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    sget-object v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->IN:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    if-ne v0, v1, :cond_d

    .line 1066
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->in(FF)F

    move-result v0

    .line 1074
    :goto_c
    return v0

    .line 1068
    :cond_d
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->type:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    sget-object v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->OUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    if-ne v0, v1, :cond_1a

    .line 1069
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->out(FF)F

    move-result v0

    goto :goto_c

    .line 1071
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->type:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    sget-object v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->INOUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    if-ne v0, v1, :cond_27

    .line 1072
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;->inout(FF)F

    move-result v0

    goto :goto_c

    .line 1074
    :cond_27
    const/4 v0, 0x0

    goto :goto_c
.end method
