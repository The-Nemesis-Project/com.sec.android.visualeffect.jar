.class Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$4;
.super Ljava/lang/Object;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$4;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 180
    .local v0, "value":F
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$4;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # setter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$1302(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F

    .line 181
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$4;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animateScreenOn()V
    invoke-static {v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$1400(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    .line 182
    return-void
.end method
