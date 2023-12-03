package com.dmadev.tradein.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "images")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    private String name;

    private String originalFileName;

    private Long size;

    private String contentType;

    private boolean isPreviewImage;

    // решение с проблемой загрузки картинок по причине того что фотографии слишком большого размера для поля bytes.
    @Lob
    @Column(name = "bytes", columnDefinition = "longblob")
    private byte[] bytes;

    //    fetch = FetchType.EAGER --способ загрузки - привязанный к этой сущности, сразу подгружаем - противоположность лейзи
//    EAGER- подгружая модель, мы сразу подгружаем все связанные с ней сущности
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private Product product;


}
