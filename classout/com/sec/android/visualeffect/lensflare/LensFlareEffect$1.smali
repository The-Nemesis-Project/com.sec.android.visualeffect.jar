.class Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 2

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$002(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F

    .line 436
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # invokes: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragPos()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$100(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    .line 437
    return-void
.end method
