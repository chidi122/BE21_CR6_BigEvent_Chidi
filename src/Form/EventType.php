<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TelType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
          ->add('name', TextareaType::class, [
            'attr' => ['class' => 'form-control', 'placeholder' => 'Enter event name']
            ])

            ->add('description', TextareaType::class, [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Enter event description']
            ])
            ->add('picture',  UrlType::class, ['attr' => ['class' => 'form-control', 'placeholder' => 'please upload jpg, png or jpeg file '],])


            ->add('capacity', IntegerType::class, [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Enter maximum capacity']
            ])
            ->add('email', EmailType::class, [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Enter contact email']
            ])
            ->add('phone', TelType::class, [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Enter contact phone number']
            ])
            ->add('address', TextType::class, [
                'attr' => ['class' => 'form-control', 'placeholder' => 'Enter event address']
            ])
            ->add('url', null,  ['attr' => ['class' => 'form-control', 'placeholder' => 'please insert Url '],])

            ->add('type', ChoiceType::class, [
                'choices' => [
                    'Music' => 'music',
                    'Sport' => 'sport',
                    'Movie' => 'movie',
                    'Theater' => 'theater'
                ],
                'attr' => ['class' => 'form-control', 'placeholder' => 'Select event type']
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
