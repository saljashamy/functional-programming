(define (delete_atom a_atom a_list)
  (define (delete_atom_h a_atom a_list n_list)
    (cond
      ((null? a_list) n_list)
      ((eqv? a_atom (car a_list))(delete_atom_h a_atom (cdr a_list) n_list))
      (else (delete_atom_h a_atom (cdr a_list) (append n_list (list (car a_list)))))
      )
    )
  (delete_atom_h a_atom a_list '())
  )

(delete_atom 1 '(0 1 1 2 1))
(delete_atom -1 '(0 1 1 2 1))
