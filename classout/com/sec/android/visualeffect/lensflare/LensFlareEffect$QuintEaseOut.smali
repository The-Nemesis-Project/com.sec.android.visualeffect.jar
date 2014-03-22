.class public Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;
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
    name = "QuintEaseOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;


# direct methods
.method public constructor <init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 2

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 1044
    div-float v0, p1, v1

    sub-float p1, v0, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method
