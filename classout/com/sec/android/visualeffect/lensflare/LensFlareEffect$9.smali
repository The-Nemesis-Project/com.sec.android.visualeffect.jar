.class Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;
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
    .line 520
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 522
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1302(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F

    .line 523
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # invokes: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedAffordance()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1400(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # getter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1300(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)F

    move-result v0

    const v1, 0x3f19999a

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    .line 525
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # getter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1500(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;

    move-result-object v1

    # invokes: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1600(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Landroid/animation/Animator;)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # getter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1700(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 528
    :cond_35
    return-void
.end method
